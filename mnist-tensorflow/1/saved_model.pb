ўў
¤┘
:
Add
x"T
y"T
z"T"
Ttype:
2	
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
ы
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
D
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.7.02v1.7.0-3-g024aecf┼╧
Р
-global_step/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
: *
valueB *
_class
loc:@global_step
Е
#global_step/Initializer/zeros/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@global_step
╠
global_step/Initializer/zerosFill-global_step/Initializer/zeros/shape_as_tensor#global_step/Initializer/zeros/Const*
T0	*

index_type0*
_class
loc:@global_step*
_output_shapes
: 
П
global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
▓
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
v
PlaceholderPlaceholder*
dtype0*+
_output_shapes
:         * 
shape:         
f
Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"             
v
ReshapeReshapePlaceholderReshape/shape*/
_output_shapes
:         *
T0*
Tshape0
┴
:conv_layer1/conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"             *,
_class"
 loc:@conv_layer1/conv2d/kernel*
dtype0*
_output_shapes
:
л
8conv_layer1/conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *nзо╜*,
_class"
 loc:@conv_layer1/conv2d/kernel*
dtype0*
_output_shapes
: 
л
8conv_layer1/conv2d/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *nзо=*,
_class"
 loc:@conv_layer1/conv2d/kernel
Ф
Bconv_layer1/conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv_layer1/conv2d/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@conv_layer1/conv2d/kernel*
seed2 *
dtype0*&
_output_shapes
: *

seed 
В
8conv_layer1/conv2d/kernel/Initializer/random_uniform/subSub8conv_layer1/conv2d/kernel/Initializer/random_uniform/max8conv_layer1/conv2d/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@conv_layer1/conv2d/kernel*
_output_shapes
: 
Ь
8conv_layer1/conv2d/kernel/Initializer/random_uniform/mulMulBconv_layer1/conv2d/kernel/Initializer/random_uniform/RandomUniform8conv_layer1/conv2d/kernel/Initializer/random_uniform/sub*&
_output_shapes
: *
T0*,
_class"
 loc:@conv_layer1/conv2d/kernel
О
4conv_layer1/conv2d/kernel/Initializer/random_uniformAdd8conv_layer1/conv2d/kernel/Initializer/random_uniform/mul8conv_layer1/conv2d/kernel/Initializer/random_uniform/min*&
_output_shapes
: *
T0*,
_class"
 loc:@conv_layer1/conv2d/kernel
╦
conv_layer1/conv2d/kernel
VariableV2*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name *,
_class"
 loc:@conv_layer1/conv2d/kernel
Г
 conv_layer1/conv2d/kernel/AssignAssignconv_layer1/conv2d/kernel4conv_layer1/conv2d/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@conv_layer1/conv2d/kernel
д
conv_layer1/conv2d/kernel/readIdentityconv_layer1/conv2d/kernel*&
_output_shapes
: *
T0*,
_class"
 loc:@conv_layer1/conv2d/kernel
п
9conv_layer1/conv2d/bias/Initializer/zeros/shape_as_tensorConst*
valueB: **
_class 
loc:@conv_layer1/conv2d/bias*
dtype0*
_output_shapes
:
а
/conv_layer1/conv2d/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    **
_class 
loc:@conv_layer1/conv2d/bias
А
)conv_layer1/conv2d/bias/Initializer/zerosFill9conv_layer1/conv2d/bias/Initializer/zeros/shape_as_tensor/conv_layer1/conv2d/bias/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@conv_layer1/conv2d/bias*
_output_shapes
: 
п
conv_layer1/conv2d/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name **
_class 
loc:@conv_layer1/conv2d/bias*
	container 
ц
conv_layer1/conv2d/bias/AssignAssignconv_layer1/conv2d/bias)conv_layer1/conv2d/bias/Initializer/zeros**
_class 
loc:@conv_layer1/conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Т
conv_layer1/conv2d/bias/readIdentityconv_layer1/conv2d/bias*
T0**
_class 
loc:@conv_layer1/conv2d/bias*
_output_shapes
: 
q
 conv_layer1/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ї
conv_layer1/conv2d/Conv2DConv2DReshapeconv_layer1/conv2d/kernel/read*
paddingSAME*/
_output_shapes
:          *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
п
conv_layer1/conv2d/BiasAddBiasAddconv_layer1/conv2d/Conv2Dconv_layer1/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:          
u
conv_layer1/conv2d/ReluReluconv_layer1/conv2d/BiasAdd*/
_output_shapes
:          *
T0
╤
!conv_layer1/max_pooling2d/MaxPoolMaxPoolconv_layer1/conv2d/Relu*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:          *
T0
┴
:conv_layer2/conv2d/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
valueB"          @   *,
_class"
 loc:@conv_layer2/conv2d/kernel*
dtype0
л
8conv_layer2/conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *═╠L╜*,
_class"
 loc:@conv_layer2/conv2d/kernel*
dtype0*
_output_shapes
: 
л
8conv_layer2/conv2d/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *═╠L=*,
_class"
 loc:@conv_layer2/conv2d/kernel*
dtype0
Ф
Bconv_layer2/conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform:conv_layer2/conv2d/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*,
_class"
 loc:@conv_layer2/conv2d/kernel*
seed2 
В
8conv_layer2/conv2d/kernel/Initializer/random_uniform/subSub8conv_layer2/conv2d/kernel/Initializer/random_uniform/max8conv_layer2/conv2d/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@conv_layer2/conv2d/kernel
Ь
8conv_layer2/conv2d/kernel/Initializer/random_uniform/mulMulBconv_layer2/conv2d/kernel/Initializer/random_uniform/RandomUniform8conv_layer2/conv2d/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@conv_layer2/conv2d/kernel*&
_output_shapes
: @
О
4conv_layer2/conv2d/kernel/Initializer/random_uniformAdd8conv_layer2/conv2d/kernel/Initializer/random_uniform/mul8conv_layer2/conv2d/kernel/Initializer/random_uniform/min*&
_output_shapes
: @*
T0*,
_class"
 loc:@conv_layer2/conv2d/kernel
╦
conv_layer2/conv2d/kernel
VariableV2*,
_class"
 loc:@conv_layer2/conv2d/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name 
Г
 conv_layer2/conv2d/kernel/AssignAssignconv_layer2/conv2d/kernel4conv_layer2/conv2d/kernel/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@conv_layer2/conv2d/kernel*
validate_shape(*&
_output_shapes
: @
д
conv_layer2/conv2d/kernel/readIdentityconv_layer2/conv2d/kernel*&
_output_shapes
: @*
T0*,
_class"
 loc:@conv_layer2/conv2d/kernel
п
9conv_layer2/conv2d/bias/Initializer/zeros/shape_as_tensorConst*
valueB:@**
_class 
loc:@conv_layer2/conv2d/bias*
dtype0*
_output_shapes
:
а
/conv_layer2/conv2d/bias/Initializer/zeros/ConstConst*
valueB
 *    **
_class 
loc:@conv_layer2/conv2d/bias*
dtype0*
_output_shapes
: 
А
)conv_layer2/conv2d/bias/Initializer/zerosFill9conv_layer2/conv2d/bias/Initializer/zeros/shape_as_tensor/conv_layer2/conv2d/bias/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@conv_layer2/conv2d/bias*
_output_shapes
:@
п
conv_layer2/conv2d/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name **
_class 
loc:@conv_layer2/conv2d/bias*
	container *
shape:@
ц
conv_layer2/conv2d/bias/AssignAssignconv_layer2/conv2d/bias)conv_layer2/conv2d/bias/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@conv_layer2/conv2d/bias*
validate_shape(*
_output_shapes
:@
Т
conv_layer2/conv2d/bias/readIdentityconv_layer2/conv2d/bias*
T0**
_class 
loc:@conv_layer2/conv2d/bias*
_output_shapes
:@
q
 conv_layer2/conv2d/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
О
conv_layer2/conv2d/Conv2DConv2D!conv_layer1/max_pooling2d/MaxPoolconv_layer2/conv2d/kernel/read*/
_output_shapes
:         @*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
п
conv_layer2/conv2d/BiasAddBiasAddconv_layer2/conv2d/Conv2Dconv_layer2/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         @
u
conv_layer2/conv2d/ReluReluconv_layer2/conv2d/BiasAdd*
T0*/
_output_shapes
:         @
╤
!conv_layer2/max_pooling2d/MaxPoolMaxPoolconv_layer2/conv2d/Relu*/
_output_shapes
:         @*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME
j
conv_layer2/Reshape/shapeConst*
valueB"    @  *
dtype0*
_output_shapes
:
Э
conv_layer2/ReshapeReshape!conv_layer2/max_pooling2d/MaxPoolconv_layer2/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:         └
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"@     *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *ИО╜*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *ИО=*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
ч
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
└А*

seed *
T0*
_class
loc:@dense/kernel
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
т
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
└А*
T0*
_class
loc:@dense/kernel
╘
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
└А
е
dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
└А*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:
└А
╔
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
└А*
use_locking(*
T0*
_class
loc:@dense/kernel
w
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
└А
Ц
,dense/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:А*
_class
loc:@dense/bias
Ж
"dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
═
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
_output_shapes	
:А*
T0*

index_type0*
_class
loc:@dense/bias
Ч

dense/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *
_class
loc:@dense/bias*
	container *
shape:А
│
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*
_class
loc:@dense/bias
l
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
Ч
dense/MatMulMatMulconv_layer2/Reshapedense/kernel/read*(
_output_shapes
:         А*
transpose_a( *
transpose_b( *
T0
Б
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
data_formatNHWC*(
_output_shapes
:         А*
T0
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
[
dropout/IdentityIdentity
dense/Relu*
T0*(
_output_shapes
:         А
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   *!
_class
loc:@dense_1/kernel
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *шЬ╜*!
_class
loc:@dense_1/kernel*
dtype0
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *шЬ=*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
ь
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	А
*

seed *
T0*!
_class
loc:@dense_1/kernel
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
щ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes
:	А
*
T0*!
_class
loc:@dense_1/kernel
█
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А

з
dense_1/kernel
VariableV2*
dtype0*
_output_shapes
:	А
*
shared_name *!
_class
loc:@dense_1/kernel*
	container *
shape:	А

╨
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
_output_shapes
:	А
*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
|
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А
*
T0
Щ
.dense_1/bias/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB:
*
_class
loc:@dense_1/bias*
dtype0
К
$dense_1/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 
╘
dense_1/bias/Initializer/zerosFill.dense_1/bias/Initializer/zeros/shape_as_tensor$dense_1/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_1/bias*
_output_shapes
:

Щ
dense_1/bias
VariableV2*
_output_shapes
:
*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:
*
dtype0
║
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:

q
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:

Ч
dense_1/MatMulMatMuldropout/Identitydense_1/kernel/read*
T0*'
_output_shapes
:         
*
transpose_a( *
transpose_b( 
Ж
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
data_formatNHWC*'
_output_shapes
:         
*
T0
U
SoftmaxSoftmaxdense_1/BiasAdd*
T0*'
_output_shapes
:         

R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
x
ArgMaxArgMaxSoftmaxArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:         *

Tidx0
Q
CastCastArgMax*#
_output_shapes
:         *

DstT0*

SrcT0	
T
ArgMax_1/dimensionConst*
_output_shapes
: *
value	B :*
dtype0
Д
ArgMax_1ArgMaxdense_1/BiasAddArgMax_1/dimension*
output_type0	*#
_output_shapes
:         *

Tidx0*
T0
W
	Softmax_1Softmaxdense_1/BiasAdd*
T0*'
_output_shapes
:         

P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_31c0638e24954325af906e524664748f/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ю
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:	*┬
value╕B╡	Bconv_layer1/conv2d/biasBconv_layer1/conv2d/kernelBconv_layer2/conv2d/biasBconv_layer2/conv2d/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_step
Д
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*%
valueB	B B B B B B B B B *
dtype0
╕
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv_layer1/conv2d/biasconv_layer1/conv2d/kernelconv_layer2/conv2d/biasconv_layer2/conv2d/kernel
dense/biasdense/kerneldense_1/biasdense_1/kernelglobal_step"/device:CPU:0*
dtypes
2		
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
м
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0
б
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*┬
value╕B╡	Bconv_layer1/conv2d/biasBconv_layer1/conv2d/kernelBconv_layer2/conv2d/biasBconv_layer2/conv2d/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_step*
dtype0
З
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*%
valueB	B B B B B B B B B *
dtype0
╟
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2		
╕
save/AssignAssignconv_layer1/conv2d/biassave/RestoreV2**
_class 
loc:@conv_layer1/conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
╠
save/Assign_1Assignconv_layer1/conv2d/kernelsave/RestoreV2:1*&
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@conv_layer1/conv2d/kernel*
validate_shape(
╝
save/Assign_2Assignconv_layer2/conv2d/biassave/RestoreV2:2**
_class 
loc:@conv_layer2/conv2d/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
╠
save/Assign_3Assignconv_layer2/conv2d/kernelsave/RestoreV2:3*&
_output_shapes
: @*
use_locking(*
T0*,
_class"
 loc:@conv_layer2/conv2d/kernel*
validate_shape(
г
save/Assign_4Assign
dense/biassave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А
м
save/Assign_5Assigndense/kernelsave/RestoreV2:5*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
└А*
use_locking(*
T0
ж
save/Assign_6Assigndense_1/biassave/RestoreV2:6*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0
п
save/Assign_7Assigndense_1/kernelsave/RestoreV2:7*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	А
*
use_locking(*
T0
а
save/Assign_8Assignglobal_stepsave/RestoreV2:8*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(
и
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_all_tables^init_1
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_a0fafbbb0ccd4c9eba163de403668191/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
а
save_1/SaveV2/tensor_namesConst"/device:CPU:0*┬
value╕B╡	Bconv_layer1/conv2d/biasBconv_layer1/conv2d/kernelBconv_layer2/conv2d/biasBconv_layer2/conv2d/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_step*
dtype0*
_output_shapes
:	
Ж
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
└
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesconv_layer1/conv2d/biasconv_layer1/conv2d/kernelconv_layer2/conv2d/biasconv_layer2/conv2d/kernel
dense/biasdense/kerneldense_1/biasdense_1/kernelglobal_step"/device:CPU:0*
dtypes
2		
и
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
▓
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0
г
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*┬
value╕B╡	Bconv_layer1/conv2d/biasBconv_layer1/conv2d/kernelBconv_layer2/conv2d/biasBconv_layer2/conv2d/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_step*
dtype0*
_output_shapes
:	
Й
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
╧
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2		
╝
save_1/AssignAssignconv_layer1/conv2d/biassave_1/RestoreV2*
use_locking(*
T0**
_class 
loc:@conv_layer1/conv2d/bias*
validate_shape(*
_output_shapes
: 
╨
save_1/Assign_1Assignconv_layer1/conv2d/kernelsave_1/RestoreV2:1*,
_class"
 loc:@conv_layer1/conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0
└
save_1/Assign_2Assignconv_layer2/conv2d/biassave_1/RestoreV2:2**
_class 
loc:@conv_layer2/conv2d/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
╨
save_1/Assign_3Assignconv_layer2/conv2d/kernelsave_1/RestoreV2:3*
use_locking(*
T0*,
_class"
 loc:@conv_layer2/conv2d/kernel*
validate_shape(*&
_output_shapes
: @
з
save_1/Assign_4Assign
dense/biassave_1/RestoreV2:4*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
░
save_1/Assign_5Assigndense/kernelsave_1/RestoreV2:5*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
└А
к
save_1/Assign_6Assigndense_1/biassave_1/RestoreV2:6*
_output_shapes
:
*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
│
save_1/Assign_7Assigndense_1/kernelsave_1/RestoreV2:7*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	А

д
save_1/Assign_8Assignglobal_stepsave_1/RestoreV2:8*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
╝
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8" 
legacy_init_op


group_deps"є
trainable_variables█╪
Щ
conv_layer1/conv2d/kernel:0 conv_layer1/conv2d/kernel/Assign conv_layer1/conv2d/kernel/read:026conv_layer1/conv2d/kernel/Initializer/random_uniform:0
И
conv_layer1/conv2d/bias:0conv_layer1/conv2d/bias/Assignconv_layer1/conv2d/bias/read:02+conv_layer1/conv2d/bias/Initializer/zeros:0
Щ
conv_layer2/conv2d/kernel:0 conv_layer2/conv2d/kernel/Assign conv_layer2/conv2d/kernel/read:026conv_layer2/conv2d/kernel/Initializer/random_uniform:0
И
conv_layer2/conv2d/bias:0conv_layer2/conv2d/bias/Assignconv_layer2/conv2d/bias/read:02+conv_layer2/conv2d/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0" 
global_step

global_step:0"├
	variables╡▓
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
Щ
conv_layer1/conv2d/kernel:0 conv_layer1/conv2d/kernel/Assign conv_layer1/conv2d/kernel/read:026conv_layer1/conv2d/kernel/Initializer/random_uniform:0
И
conv_layer1/conv2d/bias:0conv_layer1/conv2d/bias/Assignconv_layer1/conv2d/bias/read:02+conv_layer1/conv2d/bias/Initializer/zeros:0
Щ
conv_layer2/conv2d/kernel:0 conv_layer2/conv2d/kernel/Assign conv_layer2/conv2d/kernel/read:026conv_layer2/conv2d/kernel/Initializer/random_uniform:0
И
conv_layer2/conv2d/bias:0conv_layer2/conv2d/bias/Assignconv_layer2/conv2d/bias/read:02+conv_layer2/conv2d/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0*о
classesв
-
x(
Placeholder:0         $
classes
Cast:0         /
predictions 
	Softmax:0         
tensorflow/serving/predict*╢
serving_defaultв
-
x(
Placeholder:0         $
classes
Cast:0         /
predictions 
	Softmax:0         
tensorflow/serving/predict