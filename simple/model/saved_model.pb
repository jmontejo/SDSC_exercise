С 
Џ 
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ї
DenseBincount
input"Tidx
size"Tidx
weights"T
output"T"
Tidxtype:
2	"
Ttype:
2	"
binary_outputbool( 
=
Greater
x"T
y"T
z
"
Ttype:
2	
А
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeѕ
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttypeѕ
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttypeѕ
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
ї
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
Ї
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
-
Sqrt
x"T
y"T"
Ttype:

2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
э
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.9.22unknown8ні
ї
Adam/lowavg_vs_high/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/lowavg_vs_high/bias/v
Ё
.Adam/lowavg_vs_high/bias/v/Read/ReadVariableOpReadVariableOpAdam/lowavg_vs_high/bias/v*
_output_shapes
:*
dtype0
ћ
Adam/lowavg_vs_high/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdam/lowavg_vs_high/kernel/v
Ї
0Adam/lowavg_vs_high/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lowavg_vs_high/kernel/v*
_output_shapes

:*
dtype0
ї
Adam/low_vs_avghigh/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/low_vs_avghigh/bias/v
Ё
.Adam/low_vs_avghigh/bias/v/Read/ReadVariableOpReadVariableOpAdam/low_vs_avghigh/bias/v*
_output_shapes
:*
dtype0
ћ
Adam/low_vs_avghigh/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdam/low_vs_avghigh/kernel/v
Ї
0Adam/low_vs_avghigh/kernel/v/Read/ReadVariableOpReadVariableOpAdam/low_vs_avghigh/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0
є
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:*
dtype0
ї
Adam/lowavg_vs_high/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/lowavg_vs_high/bias/m
Ё
.Adam/lowavg_vs_high/bias/m/Read/ReadVariableOpReadVariableOpAdam/lowavg_vs_high/bias/m*
_output_shapes
:*
dtype0
ћ
Adam/lowavg_vs_high/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdam/lowavg_vs_high/kernel/m
Ї
0Adam/lowavg_vs_high/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lowavg_vs_high/kernel/m*
_output_shapes

:*
dtype0
ї
Adam/low_vs_avghigh/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/low_vs_avghigh/bias/m
Ё
.Adam/low_vs_avghigh/bias/m/Read/ReadVariableOpReadVariableOpAdam/low_vs_avghigh/bias/m*
_output_shapes
:*
dtype0
ћ
Adam/low_vs_avghigh/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdam/low_vs_avghigh/kernel/m
Ї
0Adam/low_vs_avghigh/kernel/m/Read/ReadVariableOpReadVariableOpAdam/low_vs_avghigh/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0
є
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
m

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name63523*
value_dtype0	
o
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name63479*
value_dtype0	
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
b
count_5VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0	
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:	*
dtype0
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:	*
dtype0
~
lowavg_vs_high/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelowavg_vs_high/bias
w
'lowavg_vs_high/bias/Read/ReadVariableOpReadVariableOplowavg_vs_high/bias*
_output_shapes
:*
dtype0
є
lowavg_vs_high/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_namelowavg_vs_high/kernel

)lowavg_vs_high/kernel/Read/ReadVariableOpReadVariableOplowavg_vs_high/kernel*
_output_shapes

:*
dtype0
~
low_vs_avghigh/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelow_vs_avghigh/bias
w
'low_vs_avghigh/bias/Read/ReadVariableOpReadVariableOplow_vs_avghigh/bias*
_output_shapes
:*
dtype0
є
low_vs_avghigh/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_namelow_vs_avghigh/kernel

)low_vs_avghigh/kernel/Read/ReadVariableOpReadVariableOplow_vs_avghigh/kernel*
_output_shapes

:*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
z
ConstConst*
_output_shapes

:	*
dtype0*=
value4B2	"$f■▀?1%@ l$BG┼Bi)(AMќeA§GDЏ(AиaB
|
Const_1Const*
_output_shapes

:	*
dtype0*=
value4B2	"$┐ђл;┘╩_?C▀&CЃф┼B┤фђ?~B╣=з╬A▀hј?,гд@
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
ќ
Const_4Const*
_output_shapes
:*
dtype0*[
valueRBPBAncient Oak MillBHappy Blackberry WindmillBRedwood Orchard Watermill
h
Const_5Const*
_output_shapes
:*
dtype0	*-
value$B"	"                     
x
Const_6Const*
_output_shapes
:*
dtype0	*=
value4B2	"(                                   
x
Const_7Const*
_output_shapes
:*
dtype0	*=
value4B2	"(                                   
А
StatefulPartitionedCallStatefulPartitionedCallhash_table_1Const_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *#
fR
__inference_<lambda>_94713
А
StatefulPartitionedCall_1StatefulPartitionedCall
hash_tableConst_6Const_7*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *#
fR
__inference_<lambda>_94721
B
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1
џM
Const_8Const"/device:CPU:0*
_output_shapes
: *
dtype0*МL
value╔LBкL B┐L
є
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-0
layer-11
layer_with_weights-1
layer-12
layer_with_weights-2
layer-13
layer_with_weights-3
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*
* 
* 
* 
* 
* 
* 
* 

_init_input_shape* 
* 
* 
* 
џ
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6

layer-7
layer-8
layer-9
layer-10
layer-11
layer-12
layer-13
 layer-14
!layer-15
"layer-16
#layer-17
layer-18
	layer-19
$layer-20
%layer-21
&layer-22
'layer_with_weights-0
'layer-23
(layer-24
)layer-25
*layer-26
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*
д
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias*
д
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias*
д
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias*
C
I0
J1
K2
73
84
?5
@6
G7
H8*
.
70
81
?2
@3
G4
H5*
* 
░
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Qtrace_0
Rtrace_1
Strace_2
Ttrace_3* 
6
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_3* 
* 
╝
Yiter

Zbeta_1

[beta_2
	\decay
]learning_rate7m─8m┼?mк@mКGm╚Hm╔7v╩8v╦?v╠@v═Gv╬Hv¤*
* 

^serving_default* 
* 

_	keras_api* 

`	keras_api* 

a	keras_api* 

b	keras_api* 

c	keras_api* 

d	keras_api* 

e	keras_api* 

f	keras_api* 

g	keras_api* 

h	keras_api* 

i	keras_api* 

j	keras_api* 
Й
k	keras_api
l
_keep_axis
m_reduce_axis
n_reduce_axis_mask
o_broadcast_shape
Imean
I
adapt_mean
Jvariance
Jadapt_variance
	Kcount
p_adapt_function*
9
q	keras_api
rinput_vocabulary
slookup_table* 
9
t	keras_api
uinput_vocabulary
vlookup_table* 

w	keras_api* 

I0
J1
K2*
* 
* 
Њ
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
7
}trace_0
~trace_1
trace_2
ђtrace_3* 
:
Ђtrace_0
ѓtrace_1
Ѓtrace_2
ёtrace_3* 

70
81*

70
81*
* 
ў
Ёnon_trainable_variables
єlayers
Єmetrics
 ѕlayer_regularization_losses
Ѕlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

іtrace_0* 

Іtrace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
@1*

?0
@1*
* 
ў
їnon_trainable_variables
Їlayers
јmetrics
 Јlayer_regularization_losses
љlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

Љtrace_0* 

њtrace_0* 
e_
VARIABLE_VALUElow_vs_avghigh/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUElow_vs_avghigh/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

G0
H1*

G0
H1*
* 
ў
Њnon_trainable_variables
ћlayers
Ћmetrics
 ќlayer_regularization_losses
Ќlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

ўtrace_0* 

Ўtrace_0* 
e_
VARIABLE_VALUElowavg_vs_high/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUElowavg_vs_high/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
D>
VARIABLE_VALUEmean&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEvariance&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
GA
VARIABLE_VALUEcount_5&variables/2/.ATTRIBUTES/VARIABLE_VALUE*

I0
J1
K2*
r
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14*
,
џ0
Џ1
ю2
Ю3
ъ4*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ъtrace_0* 
* 
* 
V
а_initializer
А_create_resource
б_initialize
Б_destroy_resource* 
* 
* 
V
ц_initializer
Ц_create_resource
д_initialize
Д_destroy_resource* 
* 

I0
J1
K2*
м
0
1
2
3
4
5
6

7
8
9
10
11
12
13
 14
!15
"16
#17
18
	19
$20
%21
&22
'23
(24
)25
*26*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
е	variables
Е	keras_api

фtotal

Фcount*
<
г	variables
Г	keras_api

«total

»count*
<
░	variables
▒	keras_api

▓total

│count*
M
┤	variables
х	keras_api

Хtotal

иcount
И
_fn_kwargs*
M
╣	variables
║	keras_api

╗total

╝count
й
_fn_kwargs*
* 
* 

Йtrace_0* 

┐trace_0* 

└trace_0* 
* 

┴trace_0* 

┬trace_0* 

├trace_0* 

ф0
Ф1*

е	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

«0
»1*

г	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

▓0
│1*

░	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

Х0
и1*

┤	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

╗0
╝1*

╣	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
Ђ{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ѕѓ
VARIABLE_VALUEAdam/low_vs_avghigh/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/low_vs_avghigh/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ѕѓ
VARIABLE_VALUEAdam/lowavg_vs_high/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/lowavg_vs_high/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ђ{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ѕѓ
VARIABLE_VALUEAdam/low_vs_avghigh/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/low_vs_avghigh/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ѕѓ
VARIABLE_VALUEAdam/lowavg_vs_high/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/lowavg_vs_high/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
u
serving_default_AshcontentPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
p
serving_default_ColorPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
}
"serving_default_DampeningTimehoursPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         

$serving_default_DoughElasticityIndexPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
x
serving_default_GlutenContentPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
s
serving_default_MoisturePlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
y
serving_default_PackageWeightgPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
y
serving_default_ProductionMillPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
{
 serving_default_ProductionRecipePlaceholder*#
_output_shapes
:         *
dtype0	*
shape:         
x
serving_default_Proteinsg100gPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
x
serving_default_StarchContentPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
Н
StatefulPartitionedCall_2StatefulPartitionedCallserving_default_Ashcontentserving_default_Color"serving_default_DampeningTimehours$serving_default_DoughElasticityIndexserving_default_GlutenContentserving_default_Moistureserving_default_PackageWeightgserving_default_ProductionMill serving_default_ProductionRecipeserving_default_Proteinsg100gserving_default_StarchContentConstConst_1hash_table_1Const_2
hash_tableConst_3dense_2/kerneldense_2/biaslowavg_vs_high/kernellowavg_vs_high/biaslow_vs_avghigh/kernellow_vs_avghigh/bias*"
Tin
2			*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         :         *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *,
f'R%
#__inference_signature_wrapper_94080
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
§
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp)low_vs_avghigh/kernel/Read/ReadVariableOp'low_vs_avghigh/bias/Read/ReadVariableOp)lowavg_vs_high/kernel/Read/ReadVariableOp'lowavg_vs_high/bias/Read/ReadVariableOpmean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount_5/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp0Adam/low_vs_avghigh/kernel/m/Read/ReadVariableOp.Adam/low_vs_avghigh/bias/m/Read/ReadVariableOp0Adam/lowavg_vs_high/kernel/m/Read/ReadVariableOp.Adam/lowavg_vs_high/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp0Adam/low_vs_avghigh/kernel/v/Read/ReadVariableOp.Adam/low_vs_avghigh/bias/v/Read/ReadVariableOp0Adam/lowavg_vs_high/kernel/v/Read/ReadVariableOp.Adam/lowavg_vs_high/bias/v/Read/ReadVariableOpConst_8*1
Tin*
(2&		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *'
f"R 
__inference__traced_save_94875
д
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filenamedense_2/kerneldense_2/biaslow_vs_avghigh/kernellow_vs_avghigh/biaslowavg_vs_high/kernellowavg_vs_high/biasmeanvariancecount_5	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_4count_4total_3count_3total_2count_2total_1count_1totalcountAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/low_vs_avghigh/kernel/mAdam/low_vs_avghigh/bias/mAdam/lowavg_vs_high/kernel/mAdam/lowavg_vs_high/bias/mAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/low_vs_avghigh/kernel/vAdam/low_vs_avghigh/bias/vAdam/lowavg_vs_high/kernel/vAdam/lowavg_vs_high/bias/v*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__traced_restore_94993­К
Ъ

Щ
I__inference_low_vs_avghigh_layer_call_and_return_conditional_losses_93712

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ъ

Щ
I__inference_lowavg_vs_high_layer_call_and_return_conditional_losses_93695

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ъ

Щ
I__inference_low_vs_avghigh_layer_call_and_return_conditional_losses_94649

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ў$
█
A__inference_simple_layer_call_and_return_conditional_losses_93875

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8	
inputs_9
	inputs_10
model_2_93845
model_2_93847
model_2_93849
model_2_93851	
model_2_93853
model_2_93855	
dense_2_93858:
dense_2_93860:&
lowavg_vs_high_93863:"
lowavg_vs_high_93865:&
low_vs_avghigh_93868:"
low_vs_avghigh_93870:
identity

identity_1ѕбdense_2/StatefulPartitionedCallб&low_vs_avghigh/StatefulPartitionedCallб&lowavg_vs_high/StatefulPartitionedCallбmodel_2/StatefulPartitionedCallЌ
model_2/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10model_2_93845model_2_93847model_2_93849model_2_93851model_2_93853model_2_93855*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_93433ј
dense_2/StatefulPartitionedCallStatefulPartitionedCall(model_2/StatefulPartitionedCall:output:0dense_2_93858dense_2_93860*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_93678ф
&lowavg_vs_high/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0lowavg_vs_high_93863lowavg_vs_high_93865*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_lowavg_vs_high_layer_call_and_return_conditional_losses_93695ф
&low_vs_avghigh/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0low_vs_avghigh_93868low_vs_avghigh_93870*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_low_vs_avghigh_layer_call_and_return_conditional_losses_93712~
IdentityIdentity/low_vs_avghigh/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ђ

Identity_1Identity/lowavg_vs_high/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ▄
NoOpNoOp ^dense_2/StatefulPartitionedCall'^low_vs_avghigh/StatefulPartitionedCall'^lowavg_vs_high/StatefulPartitionedCall ^model_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapesл
═:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&low_vs_avghigh/StatefulPartitionedCall&low_vs_avghigh/StatefulPartitionedCall2P
&lowavg_vs_high/StatefulPartitionedCall&lowavg_vs_high/StatefulPartitionedCall2B
model_2/StatefulPartitionedCallmodel_2/StatefulPartitionedCall:K G
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:K	G
#
_output_shapes
:         
 
_user_specified_nameinputs:K
G
#
_output_shapes
:         
 
_user_specified_nameinputs:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
љH
│
__inference__traced_save_94875
file_prefix-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop4
0savev2_low_vs_avghigh_kernel_read_readvariableop2
.savev2_low_vs_avghigh_bias_read_readvariableop4
0savev2_lowavg_vs_high_kernel_read_readvariableop2
.savev2_lowavg_vs_high_bias_read_readvariableop#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop&
"savev2_count_5_read_readvariableop	(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop;
7savev2_adam_low_vs_avghigh_kernel_m_read_readvariableop9
5savev2_adam_low_vs_avghigh_bias_m_read_readvariableop;
7savev2_adam_lowavg_vs_high_kernel_m_read_readvariableop9
5savev2_adam_lowavg_vs_high_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop;
7savev2_adam_low_vs_avghigh_kernel_v_read_readvariableop9
5savev2_adam_low_vs_avghigh_bias_v_read_readvariableop;
7savev2_adam_lowavg_vs_high_kernel_v_read_readvariableop9
5savev2_adam_lowavg_vs_high_bias_v_read_readvariableop
savev2_const_8

identity_1ѕбMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ▒
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*┌
valueлB═%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHи
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ї
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop0savev2_low_vs_avghigh_kernel_read_readvariableop.savev2_low_vs_avghigh_bias_read_readvariableop0savev2_lowavg_vs_high_kernel_read_readvariableop.savev2_lowavg_vs_high_bias_read_readvariableopsavev2_mean_read_readvariableop#savev2_variance_read_readvariableop"savev2_count_5_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop7savev2_adam_low_vs_avghigh_kernel_m_read_readvariableop5savev2_adam_low_vs_avghigh_bias_m_read_readvariableop7savev2_adam_lowavg_vs_high_kernel_m_read_readvariableop5savev2_adam_lowavg_vs_high_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop7savev2_adam_low_vs_avghigh_kernel_v_read_readvariableop5savev2_adam_low_vs_avghigh_bias_v_read_readvariableop7savev2_adam_lowavg_vs_high_kernel_v_read_readvariableop5savev2_adam_lowavg_vs_high_bias_v_read_readvariableopsavev2_const_8"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%		љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Н
_input_shapes├
└: :::::::	:	: : : : : : : : : : : : : : : : ::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
:	: 

_output_shapes
:	:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::  

_output_shapes
::$! 

_output_shapes

:: "

_output_shapes
::$# 

_output_shapes

:: $

_output_shapes
::%

_output_shapes
: 
бy
▄

A__inference_simple_layer_call_and_return_conditional_losses_94260
placeholder
inputs_color
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7	
placeholder_8
placeholder_9!
model_2_normalization_2_sub_y"
model_2_normalization_2_sqrt_xF
Bmodel_2_string_lookup_8_none_lookup_lookuptablefindv2_table_handleG
Cmodel_2_string_lookup_8_none_lookup_lookuptablefindv2_default_value	G
Cmodel_2_integer_lookup_2_none_lookup_lookuptablefindv2_table_handleH
Dmodel_2_integer_lookup_2_none_lookup_lookuptablefindv2_default_value	8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:?
-lowavg_vs_high_matmul_readvariableop_resource:<
.lowavg_vs_high_biasadd_readvariableop_resource:?
-low_vs_avghigh_matmul_readvariableop_resource:<
.low_vs_avghigh_biasadd_readvariableop_resource:
identity

identity_1ѕбdense_2/BiasAdd/ReadVariableOpбdense_2/MatMul/ReadVariableOpб%low_vs_avghigh/BiasAdd/ReadVariableOpб$low_vs_avghigh/MatMul/ReadVariableOpб%lowavg_vs_high/BiasAdd/ReadVariableOpб$lowavg_vs_high/MatMul/ReadVariableOpб6model_2/integer_lookup_2/None_Lookup/LookupTableFindV2б5model_2/string_lookup_8/None_Lookup/LookupTableFindV2Є
6model_2/tf.__operators__.getitem_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ѕ
8model_2/tf.__operators__.getitem_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ѕ
8model_2/tf.__operators__.getitem_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
0model_2/tf.__operators__.getitem_5/strided_sliceStridedSliceplaceholder_7?model_2/tf.__operators__.getitem_5/strided_slice/stack:output:0Amodel_2/tf.__operators__.getitem_5/strided_slice/stack_1:output:0Amodel_2/tf.__operators__.getitem_5/strided_slice/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskЄ
6model_2/tf.__operators__.getitem_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ѕ
8model_2/tf.__operators__.getitem_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ѕ
8model_2/tf.__operators__.getitem_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
0model_2/tf.__operators__.getitem_4/strided_sliceStridedSliceplaceholder_6?model_2/tf.__operators__.getitem_4/strided_slice/stack:output:0Amodel_2/tf.__operators__.getitem_4/strided_slice/stack_1:output:0Amodel_2/tf.__operators__.getitem_4/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskЗ
model_2/tf.stack_2/stackPackplaceholderinputs_colorplaceholder_1placeholder_2placeholder_3placeholder_4placeholder_5placeholder_8placeholder_9*
N	*
T0*'
_output_shapes
:         	*
axis         ќ
model_2/normalization_2/subSub!model_2/tf.stack_2/stack:output:0model_2_normalization_2_sub_y*
T0*'
_output_shapes
:         	m
model_2/normalization_2/SqrtSqrtmodel_2_normalization_2_sqrt_x*
T0*
_output_shapes

:	f
!model_2/normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3А
model_2/normalization_2/MaximumMaximum model_2/normalization_2/Sqrt:y:0*model_2/normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:	б
model_2/normalization_2/truedivRealDivmodel_2/normalization_2/sub:z:0#model_2/normalization_2/Maximum:z:0*
T0*'
_output_shapes
:         	╬
5model_2/string_lookup_8/None_Lookup/LookupTableFindV2LookupTableFindV2Bmodel_2_string_lookup_8_none_lookup_lookuptablefindv2_table_handle9model_2/tf.__operators__.getitem_4/strided_slice:output:0Cmodel_2_string_lookup_8_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:         ъ
 model_2/string_lookup_8/IdentityIdentity>model_2/string_lookup_8/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         
&model_2/string_lookup_8/bincount/ShapeShape)model_2/string_lookup_8/Identity:output:0*
T0	*
_output_shapes
:p
&model_2/string_lookup_8/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ░
%model_2/string_lookup_8/bincount/ProdProd/model_2/string_lookup_8/bincount/Shape:output:0/model_2/string_lookup_8/bincount/Const:output:0*
T0*
_output_shapes
: l
*model_2/string_lookup_8/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ╣
(model_2/string_lookup_8/bincount/GreaterGreater.model_2/string_lookup_8/bincount/Prod:output:03model_2/string_lookup_8/bincount/Greater/y:output:0*
T0*
_output_shapes
: І
%model_2/string_lookup_8/bincount/CastCast,model_2/string_lookup_8/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: y
(model_2/string_lookup_8/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ф
$model_2/string_lookup_8/bincount/MaxMax)model_2/string_lookup_8/Identity:output:01model_2/string_lookup_8/bincount/Const_1:output:0*
T0	*
_output_shapes
: h
&model_2/string_lookup_8/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R«
$model_2/string_lookup_8/bincount/addAddV2-model_2/string_lookup_8/bincount/Max:output:0/model_2/string_lookup_8/bincount/add/y:output:0*
T0	*
_output_shapes
: А
$model_2/string_lookup_8/bincount/mulMul)model_2/string_lookup_8/bincount/Cast:y:0(model_2/string_lookup_8/bincount/add:z:0*
T0	*
_output_shapes
: l
*model_2/string_lookup_8/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R│
(model_2/string_lookup_8/bincount/MaximumMaximum3model_2/string_lookup_8/bincount/minlength:output:0(model_2/string_lookup_8/bincount/mul:z:0*
T0	*
_output_shapes
: l
*model_2/string_lookup_8/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rи
(model_2/string_lookup_8/bincount/MinimumMinimum3model_2/string_lookup_8/bincount/maxlength:output:0,model_2/string_lookup_8/bincount/Maximum:z:0*
T0	*
_output_shapes
: k
(model_2/string_lookup_8/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ъ
.model_2/string_lookup_8/bincount/DenseBincountDenseBincount)model_2/string_lookup_8/Identity:output:0,model_2/string_lookup_8/bincount/Minimum:z:01model_2/string_lookup_8/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(Л
6model_2/integer_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Cmodel_2_integer_lookup_2_none_lookup_lookuptablefindv2_table_handle9model_2/tf.__operators__.getitem_5/strided_slice:output:0Dmodel_2_integer_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:         а
!model_2/integer_lookup_2/IdentityIdentity?model_2/integer_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         Ђ
'model_2/integer_lookup_2/bincount/ShapeShape*model_2/integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:q
'model_2/integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: │
&model_2/integer_lookup_2/bincount/ProdProd0model_2/integer_lookup_2/bincount/Shape:output:00model_2/integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: m
+model_2/integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ╝
)model_2/integer_lookup_2/bincount/GreaterGreater/model_2/integer_lookup_2/bincount/Prod:output:04model_2/integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: Ї
&model_2/integer_lookup_2/bincount/CastCast-model_2/integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: z
)model_2/integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Г
%model_2/integer_lookup_2/bincount/MaxMax*model_2/integer_lookup_2/Identity:output:02model_2/integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: i
'model_2/integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R▒
%model_2/integer_lookup_2/bincount/addAddV2.model_2/integer_lookup_2/bincount/Max:output:00model_2/integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ц
%model_2/integer_lookup_2/bincount/mulMul*model_2/integer_lookup_2/bincount/Cast:y:0)model_2/integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: m
+model_2/integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RХ
)model_2/integer_lookup_2/bincount/MaximumMaximum4model_2/integer_lookup_2/bincount/minlength:output:0)model_2/integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: m
+model_2/integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R║
)model_2/integer_lookup_2/bincount/MinimumMinimum4model_2/integer_lookup_2/bincount/maxlength:output:0-model_2/integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: l
)model_2/integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB б
/model_2/integer_lookup_2/bincount/DenseBincountDenseBincount*model_2/integer_lookup_2/Identity:output:0-model_2/integer_lookup_2/bincount/Minimum:z:02model_2/integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(j
model_2/tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         Б
model_2/tf.concat_2/concatConcatV2#model_2/normalization_2/truediv:z:07model_2/string_lookup_8/bincount/DenseBincount:output:08model_2/integer_lookup_2/bincount/DenseBincount:output:0(model_2/tf.concat_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         ё
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ќ
dense_2/MatMulMatMul#model_2/tf.concat_2/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ј
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         `
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         њ
$lowavg_vs_high/MatMul/ReadVariableOpReadVariableOp-lowavg_vs_high_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Џ
lowavg_vs_high/MatMulMatMuldense_2/Relu:activations:0,lowavg_vs_high/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         љ
%lowavg_vs_high/BiasAdd/ReadVariableOpReadVariableOp.lowavg_vs_high_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
lowavg_vs_high/BiasAddBiasAddlowavg_vs_high/MatMul:product:0-lowavg_vs_high/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         t
lowavg_vs_high/SigmoidSigmoidlowavg_vs_high/BiasAdd:output:0*
T0*'
_output_shapes
:         њ
$low_vs_avghigh/MatMul/ReadVariableOpReadVariableOp-low_vs_avghigh_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Џ
low_vs_avghigh/MatMulMatMuldense_2/Relu:activations:0,low_vs_avghigh/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         љ
%low_vs_avghigh/BiasAdd/ReadVariableOpReadVariableOp.low_vs_avghigh_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
low_vs_avghigh/BiasAddBiasAddlow_vs_avghigh/MatMul:product:0-low_vs_avghigh/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         t
low_vs_avghigh/SigmoidSigmoidlow_vs_avghigh/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitylow_vs_avghigh/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         k

Identity_1Identitylowavg_vs_high/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ќ
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp&^low_vs_avghigh/BiasAdd/ReadVariableOp%^low_vs_avghigh/MatMul/ReadVariableOp&^lowavg_vs_high/BiasAdd/ReadVariableOp%^lowavg_vs_high/MatMul/ReadVariableOp7^model_2/integer_lookup_2/None_Lookup/LookupTableFindV26^model_2/string_lookup_8/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapesл
═:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2N
%low_vs_avghigh/BiasAdd/ReadVariableOp%low_vs_avghigh/BiasAdd/ReadVariableOp2L
$low_vs_avghigh/MatMul/ReadVariableOp$low_vs_avghigh/MatMul/ReadVariableOp2N
%lowavg_vs_high/BiasAdd/ReadVariableOp%lowavg_vs_high/BiasAdd/ReadVariableOp2L
$lowavg_vs_high/MatMul/ReadVariableOp$lowavg_vs_high/MatMul/ReadVariableOp2p
6model_2/integer_lookup_2/None_Lookup/LookupTableFindV26model_2/integer_lookup_2/None_Lookup/LookupTableFindV22n
5model_2/string_lookup_8/None_Lookup/LookupTableFindV25model_2/string_lookup_8/None_Lookup/LookupTableFindV2:[ W
#
_output_shapes
:         
0
_user_specified_nameinputs/Ash content (%):QM
#
_output_shapes
:         
&
_user_specified_nameinputs/Color:b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dampening Time (hours):b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dough Elasticity Index:^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Gluten Content (%):XT
#
_output_shapes
:         
-
_user_specified_nameinputs/Moisture (%):^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Package Weight (g):[W
#
_output_shapes
:         
0
_user_specified_nameinputs/Production Mill:]Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Production Recipe:]	Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Proteins (g)/100g:^
Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Starch Content (%):$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
їЇ
я
!__inference__traced_restore_94993
file_prefix1
assignvariableop_dense_2_kernel:-
assignvariableop_1_dense_2_bias::
(assignvariableop_2_low_vs_avghigh_kernel:4
&assignvariableop_3_low_vs_avghigh_bias::
(assignvariableop_4_lowavg_vs_high_kernel:4
&assignvariableop_5_lowavg_vs_high_bias:%
assignvariableop_6_mean:	)
assignvariableop_7_variance:	$
assignvariableop_8_count_5:	 &
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: %
assignvariableop_14_total_4: %
assignvariableop_15_count_4: %
assignvariableop_16_total_3: %
assignvariableop_17_count_3: %
assignvariableop_18_total_2: %
assignvariableop_19_count_2: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: #
assignvariableop_22_total: #
assignvariableop_23_count: ;
)assignvariableop_24_adam_dense_2_kernel_m:5
'assignvariableop_25_adam_dense_2_bias_m:B
0assignvariableop_26_adam_low_vs_avghigh_kernel_m:<
.assignvariableop_27_adam_low_vs_avghigh_bias_m:B
0assignvariableop_28_adam_lowavg_vs_high_kernel_m:<
.assignvariableop_29_adam_lowavg_vs_high_bias_m:;
)assignvariableop_30_adam_dense_2_kernel_v:5
'assignvariableop_31_adam_dense_2_bias_v:B
0assignvariableop_32_adam_low_vs_avghigh_kernel_v:<
.assignvariableop_33_adam_low_vs_avghigh_bias_v:B
0assignvariableop_34_adam_lowavg_vs_high_kernel_v:<
.assignvariableop_35_adam_lowavg_vs_high_bias_v:
identity_37ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9┤
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*┌
valueлB═%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH║
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ┌
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ф
_output_shapesЌ
ћ:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOpAssignVariableOpassignvariableop_dense_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_2AssignVariableOp(assignvariableop_2_low_vs_avghigh_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_3AssignVariableOp&assignvariableop_3_low_vs_avghigh_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_4AssignVariableOp(assignvariableop_4_lowavg_vs_high_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_5AssignVariableOp&assignvariableop_5_lowavg_vs_high_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_6AssignVariableOpassignvariableop_6_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_7AssignVariableOpassignvariableop_7_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:Ѕ
AssignVariableOp_8AssignVariableOpassignvariableop_8_count_5Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_4Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_4Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_3Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_3Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_2_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_2_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_26AssignVariableOp0assignvariableop_26_adam_low_vs_avghigh_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_low_vs_avghigh_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_28AssignVariableOp0assignvariableop_28_adam_lowavg_vs_high_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_29AssignVariableOp.assignvariableop_29_adam_lowavg_vs_high_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_2_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_2_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_32AssignVariableOp0assignvariableop_32_adam_low_vs_avghigh_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_33AssignVariableOp.assignvariableop_33_adam_low_vs_avghigh_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_34AssignVariableOp0assignvariableop_34_adam_lowavg_vs_high_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_35AssignVariableOp.assignvariableop_35_adam_lowavg_vs_high_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 у
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: н
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
вR
і
B__inference_model_2_layer_call_and_return_conditional_losses_93433

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8	
inputs_9
	inputs_10
normalization_2_sub_y
normalization_2_sqrt_x>
:string_lookup_8_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_8_none_lookup_lookuptablefindv2_default_value	?
;integer_lookup_2_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_2_none_lookup_lookuptablefindv2_default_value	
identityѕб.integer_lookup_2/None_Lookup/LookupTableFindV2б-string_lookup_8/None_Lookup/LookupTableFindV2
.tf.__operators__.getitem_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      у
(tf.__operators__.getitem_5/strided_sliceStridedSliceinputs_87tf.__operators__.getitem_5/strided_slice/stack:output:09tf.__operators__.getitem_5/strided_slice/stack_1:output:09tf.__operators__.getitem_5/strided_slice/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask
.tf.__operators__.getitem_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      у
(tf.__operators__.getitem_4/strided_sliceStridedSliceinputs_77tf.__operators__.getitem_4/strided_slice/stack:output:09tf.__operators__.getitem_4/strided_slice/stack_1:output:09tf.__operators__.getitem_4/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask┴
tf.stack_2/stackPackinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_9	inputs_10*
N	*
T0*'
_output_shapes
:         	*
axis         ~
normalization_2/subSubtf.stack_2/stack:output:0normalization_2_sub_y*
T0*'
_output_shapes
:         	]
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*
_output_shapes

:	^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3Ѕ
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:	і
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:         	«
-string_lookup_8/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_8_none_lookup_lookuptablefindv2_table_handle1tf.__operators__.getitem_4/strided_slice:output:0;string_lookup_8_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:         ј
string_lookup_8/IdentityIdentity6string_lookup_8/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         o
string_lookup_8/bincount/ShapeShape!string_lookup_8/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_8/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ў
string_lookup_8/bincount/ProdProd'string_lookup_8/bincount/Shape:output:0'string_lookup_8/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_8/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : А
 string_lookup_8/bincount/GreaterGreater&string_lookup_8/bincount/Prod:output:0+string_lookup_8/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_8/bincount/CastCast$string_lookup_8/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_8/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       њ
string_lookup_8/bincount/MaxMax!string_lookup_8/Identity:output:0)string_lookup_8/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_8/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rќ
string_lookup_8/bincount/addAddV2%string_lookup_8/bincount/Max:output:0'string_lookup_8/bincount/add/y:output:0*
T0	*
_output_shapes
: Ѕ
string_lookup_8/bincount/mulMul!string_lookup_8/bincount/Cast:y:0 string_lookup_8/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_8/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RЏ
 string_lookup_8/bincount/MaximumMaximum+string_lookup_8/bincount/minlength:output:0 string_lookup_8/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_8/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RЪ
 string_lookup_8/bincount/MinimumMinimum+string_lookup_8/bincount/maxlength:output:0$string_lookup_8/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_8/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ■
&string_lookup_8/bincount/DenseBincountDenseBincount!string_lookup_8/Identity:output:0$string_lookup_8/bincount/Minimum:z:0)string_lookup_8/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(▒
.integer_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_2_none_lookup_lookuptablefindv2_table_handle1tf.__operators__.getitem_5/strided_slice:output:0<integer_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:         љ
integer_lookup_2/IdentityIdentity7integer_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         q
integer_lookup_2/bincount/ShapeShape"integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: Џ
integer_lookup_2/bincount/ProdProd(integer_lookup_2/bincount/Shape:output:0(integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ц
!integer_lookup_2/bincount/GreaterGreater'integer_lookup_2/bincount/Prod:output:0,integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_2/bincount/CastCast%integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ћ
integer_lookup_2/bincount/MaxMax"integer_lookup_2/Identity:output:0*integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RЎ
integer_lookup_2/bincount/addAddV2&integer_lookup_2/bincount/Max:output:0(integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ї
integer_lookup_2/bincount/mulMul"integer_lookup_2/bincount/Cast:y:0!integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rъ
!integer_lookup_2/bincount/MaximumMaximum,integer_lookup_2/bincount/minlength:output:0!integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rб
!integer_lookup_2/bincount/MinimumMinimum,integer_lookup_2/bincount/maxlength:output:0%integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ѓ
'integer_lookup_2/bincount/DenseBincountDenseBincount"integer_lookup_2/Identity:output:0%integer_lookup_2/bincount/Minimum:z:0*integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(b
tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ч
tf.concat_2/concatConcatV2normalization_2/truediv:z:0/string_lookup_8/bincount/DenseBincount:output:00integer_lookup_2/bincount/DenseBincount:output:0 tf.concat_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         j
IdentityIdentitytf.concat_2/concat:output:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp/^integer_lookup_2/None_Lookup/LookupTableFindV2.^string_lookup_8/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*о
_input_shapes─
┴:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : 2`
.integer_lookup_2/None_Lookup/LookupTableFindV2.integer_lookup_2/None_Lookup/LookupTableFindV22^
-string_lookup_8/None_Lookup/LookupTableFindV2-string_lookup_8/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:K	G
#
_output_shapes
:         
 
_user_specified_nameinputs:K
G
#
_output_shapes
:         
 
_user_specified_nameinputs:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
И
░
&__inference_simple_layer_call_fn_93749

ashcontent	
color
dampeningtimehours
doughelasticityindex
glutencontent
moisture
packageweightg
productionmill
productionrecipe	
proteinsg100g
starchcontent
unknown
	unknown_0
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:
identity

identity_1ѕбStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCall
ashcontentcolordampeningtimehoursdoughelasticityindexglutencontentmoisturepackageweightgproductionmillproductionrecipeproteinsg100gstarchcontentunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2			*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         :         *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_simple_layer_call_and_return_conditional_losses_93720o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapesл
═:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:         
$
_user_specified_name
Ashcontent:JF
#
_output_shapes
:         

_user_specified_nameColor:WS
#
_output_shapes
:         
,
_user_specified_nameDampeningTimehours:YU
#
_output_shapes
:         
.
_user_specified_nameDoughElasticityIndex:RN
#
_output_shapes
:         
'
_user_specified_nameGlutenContent:MI
#
_output_shapes
:         
"
_user_specified_name
Moisture:SO
#
_output_shapes
:         
(
_user_specified_namePackageWeightg:SO
#
_output_shapes
:         
(
_user_specified_nameProductionMill:UQ
#
_output_shapes
:         
*
_user_specified_nameProductionRecipe:R	N
#
_output_shapes
:         
'
_user_specified_nameProteinsg100g:R
N
#
_output_shapes
:         
'
_user_specified_nameStarchContent:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
Ў

з
B__inference_dense_2_layer_call_and_return_conditional_losses_93678

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┘%
ћ
A__inference_simple_layer_call_and_return_conditional_losses_94031

ashcontent	
color
dampeningtimehours
doughelasticityindex
glutencontent
moisture
packageweightg
productionmill
productionrecipe	
proteinsg100g
starchcontent
model_2_94001
model_2_94003
model_2_94005
model_2_94007	
model_2_94009
model_2_94011	
dense_2_94014:
dense_2_94016:&
lowavg_vs_high_94019:"
lowavg_vs_high_94021:&
low_vs_avghigh_94024:"
low_vs_avghigh_94026:
identity

identity_1ѕбdense_2/StatefulPartitionedCallб&low_vs_avghigh/StatefulPartitionedCallб&lowavg_vs_high/StatefulPartitionedCallбmodel_2/StatefulPartitionedCallл
model_2/StatefulPartitionedCallStatefulPartitionedCall
ashcontentcolordampeningtimehoursdoughelasticityindexglutencontentmoisturepackageweightgproductionmillproductionrecipeproteinsg100gstarchcontentmodel_2_94001model_2_94003model_2_94005model_2_94007model_2_94009model_2_94011*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_93433ј
dense_2/StatefulPartitionedCallStatefulPartitionedCall(model_2/StatefulPartitionedCall:output:0dense_2_94014dense_2_94016*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_93678ф
&lowavg_vs_high/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0lowavg_vs_high_94019lowavg_vs_high_94021*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_lowavg_vs_high_layer_call_and_return_conditional_losses_93695ф
&low_vs_avghigh/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0low_vs_avghigh_94024low_vs_avghigh_94026*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_low_vs_avghigh_layer_call_and_return_conditional_losses_93712~
IdentityIdentity/low_vs_avghigh/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ђ

Identity_1Identity/lowavg_vs_high/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ▄
NoOpNoOp ^dense_2/StatefulPartitionedCall'^low_vs_avghigh/StatefulPartitionedCall'^lowavg_vs_high/StatefulPartitionedCall ^model_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapesл
═:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&low_vs_avghigh/StatefulPartitionedCall&low_vs_avghigh/StatefulPartitionedCall2P
&lowavg_vs_high/StatefulPartitionedCall&lowavg_vs_high/StatefulPartitionedCall2B
model_2/StatefulPartitionedCallmodel_2/StatefulPartitionedCall:O K
#
_output_shapes
:         
$
_user_specified_name
Ashcontent:JF
#
_output_shapes
:         

_user_specified_nameColor:WS
#
_output_shapes
:         
,
_user_specified_nameDampeningTimehours:YU
#
_output_shapes
:         
.
_user_specified_nameDoughElasticityIndex:RN
#
_output_shapes
:         
'
_user_specified_nameGlutenContent:MI
#
_output_shapes
:         
"
_user_specified_name
Moisture:SO
#
_output_shapes
:         
(
_user_specified_namePackageWeightg:SO
#
_output_shapes
:         
(
_user_specified_nameProductionMill:UQ
#
_output_shapes
:         
*
_user_specified_nameProductionRecipe:R	N
#
_output_shapes
:         
'
_user_specified_nameProteinsg100g:R
N
#
_output_shapes
:         
'
_user_specified_nameStarchContent:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
ЊU
┐
B__inference_model_2_layer_call_and_return_conditional_losses_94533
placeholder
inputs_color
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7	
placeholder_8
placeholder_9
normalization_2_sub_y
normalization_2_sqrt_x>
:string_lookup_8_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_8_none_lookup_lookuptablefindv2_default_value	?
;integer_lookup_2_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_2_none_lookup_lookuptablefindv2_default_value	
identityѕб.integer_lookup_2/None_Lookup/LookupTableFindV2б-string_lookup_8/None_Lookup/LookupTableFindV2
.tf.__operators__.getitem_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      В
(tf.__operators__.getitem_5/strided_sliceStridedSliceplaceholder_77tf.__operators__.getitem_5/strided_slice/stack:output:09tf.__operators__.getitem_5/strided_slice/stack_1:output:09tf.__operators__.getitem_5/strided_slice/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask
.tf.__operators__.getitem_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      В
(tf.__operators__.getitem_4/strided_sliceStridedSliceplaceholder_67tf.__operators__.getitem_4/strided_slice/stack:output:09tf.__operators__.getitem_4/strided_slice/stack_1:output:09tf.__operators__.getitem_4/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskВ
tf.stack_2/stackPackplaceholderinputs_colorplaceholder_1placeholder_2placeholder_3placeholder_4placeholder_5placeholder_8placeholder_9*
N	*
T0*'
_output_shapes
:         	*
axis         ~
normalization_2/subSubtf.stack_2/stack:output:0normalization_2_sub_y*
T0*'
_output_shapes
:         	]
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*
_output_shapes

:	^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3Ѕ
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:	і
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:         	«
-string_lookup_8/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_8_none_lookup_lookuptablefindv2_table_handle1tf.__operators__.getitem_4/strided_slice:output:0;string_lookup_8_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:         ј
string_lookup_8/IdentityIdentity6string_lookup_8/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         o
string_lookup_8/bincount/ShapeShape!string_lookup_8/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_8/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ў
string_lookup_8/bincount/ProdProd'string_lookup_8/bincount/Shape:output:0'string_lookup_8/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_8/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : А
 string_lookup_8/bincount/GreaterGreater&string_lookup_8/bincount/Prod:output:0+string_lookup_8/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_8/bincount/CastCast$string_lookup_8/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_8/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       њ
string_lookup_8/bincount/MaxMax!string_lookup_8/Identity:output:0)string_lookup_8/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_8/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rќ
string_lookup_8/bincount/addAddV2%string_lookup_8/bincount/Max:output:0'string_lookup_8/bincount/add/y:output:0*
T0	*
_output_shapes
: Ѕ
string_lookup_8/bincount/mulMul!string_lookup_8/bincount/Cast:y:0 string_lookup_8/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_8/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RЏ
 string_lookup_8/bincount/MaximumMaximum+string_lookup_8/bincount/minlength:output:0 string_lookup_8/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_8/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RЪ
 string_lookup_8/bincount/MinimumMinimum+string_lookup_8/bincount/maxlength:output:0$string_lookup_8/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_8/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ■
&string_lookup_8/bincount/DenseBincountDenseBincount!string_lookup_8/Identity:output:0$string_lookup_8/bincount/Minimum:z:0)string_lookup_8/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(▒
.integer_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_2_none_lookup_lookuptablefindv2_table_handle1tf.__operators__.getitem_5/strided_slice:output:0<integer_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:         љ
integer_lookup_2/IdentityIdentity7integer_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         q
integer_lookup_2/bincount/ShapeShape"integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: Џ
integer_lookup_2/bincount/ProdProd(integer_lookup_2/bincount/Shape:output:0(integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ц
!integer_lookup_2/bincount/GreaterGreater'integer_lookup_2/bincount/Prod:output:0,integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_2/bincount/CastCast%integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ћ
integer_lookup_2/bincount/MaxMax"integer_lookup_2/Identity:output:0*integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RЎ
integer_lookup_2/bincount/addAddV2&integer_lookup_2/bincount/Max:output:0(integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ї
integer_lookup_2/bincount/mulMul"integer_lookup_2/bincount/Cast:y:0!integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rъ
!integer_lookup_2/bincount/MaximumMaximum,integer_lookup_2/bincount/minlength:output:0!integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rб
!integer_lookup_2/bincount/MinimumMinimum,integer_lookup_2/bincount/maxlength:output:0%integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ѓ
'integer_lookup_2/bincount/DenseBincountDenseBincount"integer_lookup_2/Identity:output:0%integer_lookup_2/bincount/Minimum:z:0*integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(b
tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ч
tf.concat_2/concatConcatV2normalization_2/truediv:z:0/string_lookup_8/bincount/DenseBincount:output:00integer_lookup_2/bincount/DenseBincount:output:0 tf.concat_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         j
IdentityIdentitytf.concat_2/concat:output:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp/^integer_lookup_2/None_Lookup/LookupTableFindV2.^string_lookup_8/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*о
_input_shapes─
┴:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : 2`
.integer_lookup_2/None_Lookup/LookupTableFindV2.integer_lookup_2/None_Lookup/LookupTableFindV22^
-string_lookup_8/None_Lookup/LookupTableFindV2-string_lookup_8/None_Lookup/LookupTableFindV2:[ W
#
_output_shapes
:         
0
_user_specified_nameinputs/Ash content (%):QM
#
_output_shapes
:         
&
_user_specified_nameinputs/Color:b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dampening Time (hours):b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dough Elasticity Index:^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Gluten Content (%):XT
#
_output_shapes
:         
-
_user_specified_nameinputs/Moisture (%):^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Package Weight (g):[W
#
_output_shapes
:         
0
_user_specified_nameinputs/Production Mill:]Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Production Recipe:]	Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Proteins (g)/100g:^
Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Starch Content (%):$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
¤
Џ
.__inference_low_vs_avghigh_layer_call_fn_94638

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_low_vs_avghigh_layer_call_and_return_conditional_losses_93712o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
У
Щ
'__inference_model_2_layer_call_fn_94430
placeholder
inputs_color
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7	
placeholder_8
placeholder_9
unknown
	unknown_0
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
identityѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallplaceholderinputs_colorplaceholder_1placeholder_2placeholder_3placeholder_4placeholder_5placeholder_6placeholder_7placeholder_8placeholder_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_93303o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*о
_input_shapes─
┴:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:         
0
_user_specified_nameinputs/Ash content (%):QM
#
_output_shapes
:         
&
_user_specified_nameinputs/Color:b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dampening Time (hours):b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dough Elasticity Index:^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Gluten Content (%):XT
#
_output_shapes
:         
-
_user_specified_nameinputs/Moisture (%):^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Package Weight (g):[W
#
_output_shapes
:         
0
_user_specified_nameinputs/Production Mill:]Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Production Recipe:]	Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Proteins (g)/100g:^
Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Starch Content (%):$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
ђ
■
'__inference_model_2_layer_call_fn_93475

ashcontent	
color
dampeningtimehours
doughelasticityindex
glutencontent
moisture
packageweightg
productionmill
productionrecipe	
proteinsg100g
starchcontent
unknown
	unknown_0
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
identityѕбStatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCall
ashcontentcolordampeningtimehoursdoughelasticityindexglutencontentmoisturepackageweightgproductionmillproductionrecipeproteinsg100gstarchcontentunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_93433o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*о
_input_shapes─
┴:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:         
$
_user_specified_name
Ashcontent:JF
#
_output_shapes
:         

_user_specified_nameColor:WS
#
_output_shapes
:         
,
_user_specified_nameDampeningTimehours:YU
#
_output_shapes
:         
.
_user_specified_nameDoughElasticityIndex:RN
#
_output_shapes
:         
'
_user_specified_nameGlutenContent:MI
#
_output_shapes
:         
"
_user_specified_name
Moisture:SO
#
_output_shapes
:         
(
_user_specified_namePackageWeightg:SO
#
_output_shapes
:         
(
_user_specified_nameProductionMill:UQ
#
_output_shapes
:         
*
_user_specified_nameProductionRecipe:R	N
#
_output_shapes
:         
'
_user_specified_nameProteinsg100g:R
N
#
_output_shapes
:         
'
_user_specified_nameStarchContent:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
Ў$
█
A__inference_simple_layer_call_and_return_conditional_losses_93720

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8	
inputs_9
	inputs_10
model_2_93654
model_2_93656
model_2_93658
model_2_93660	
model_2_93662
model_2_93664	
dense_2_93679:
dense_2_93681:&
lowavg_vs_high_93696:"
lowavg_vs_high_93698:&
low_vs_avghigh_93713:"
low_vs_avghigh_93715:
identity

identity_1ѕбdense_2/StatefulPartitionedCallб&low_vs_avghigh/StatefulPartitionedCallб&lowavg_vs_high/StatefulPartitionedCallбmodel_2/StatefulPartitionedCallЌ
model_2/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10model_2_93654model_2_93656model_2_93658model_2_93660model_2_93662model_2_93664*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_93303ј
dense_2/StatefulPartitionedCallStatefulPartitionedCall(model_2/StatefulPartitionedCall:output:0dense_2_93679dense_2_93681*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_93678ф
&lowavg_vs_high/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0lowavg_vs_high_93696lowavg_vs_high_93698*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_lowavg_vs_high_layer_call_and_return_conditional_losses_93695ф
&low_vs_avghigh/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0low_vs_avghigh_93713low_vs_avghigh_93715*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_low_vs_avghigh_layer_call_and_return_conditional_losses_93712~
IdentityIdentity/low_vs_avghigh/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ђ

Identity_1Identity/lowavg_vs_high/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ▄
NoOpNoOp ^dense_2/StatefulPartitionedCall'^low_vs_avghigh/StatefulPartitionedCall'^lowavg_vs_high/StatefulPartitionedCall ^model_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapesл
═:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&low_vs_avghigh/StatefulPartitionedCall&low_vs_avghigh/StatefulPartitionedCall2P
&lowavg_vs_high/StatefulPartitionedCall&lowavg_vs_high/StatefulPartitionedCall2B
model_2/StatefulPartitionedCallmodel_2/StatefulPartitionedCall:K G
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:K	G
#
_output_shapes
:         
 
_user_specified_nameinputs:K
G
#
_output_shapes
:         
 
_user_specified_nameinputs:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
ї
э
__inference_<lambda>_947218
4key_value_init63522_lookuptableimportv2_table_handle0
,key_value_init63522_lookuptableimportv2_keys	2
.key_value_init63522_lookuptableimportv2_values	
identityѕб'key_value_init63522/LookupTableImportV2 
'key_value_init63522/LookupTableImportV2LookupTableImportV24key_value_init63522_lookuptableimportv2_table_handle,key_value_init63522_lookuptableimportv2_keys.key_value_init63522_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init63522/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2R
'key_value_init63522/LookupTableImportV2'key_value_init63522/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
ЈЃ
╦
 __inference__wrapped_model_93213

ashcontent	
color
dampeningtimehours
doughelasticityindex
glutencontent
moisture
packageweightg
productionmill
productionrecipe	
proteinsg100g
starchcontent(
$simple_model_2_normalization_2_sub_y)
%simple_model_2_normalization_2_sqrt_xM
Isimple_model_2_string_lookup_8_none_lookup_lookuptablefindv2_table_handleN
Jsimple_model_2_string_lookup_8_none_lookup_lookuptablefindv2_default_value	N
Jsimple_model_2_integer_lookup_2_none_lookup_lookuptablefindv2_table_handleO
Ksimple_model_2_integer_lookup_2_none_lookup_lookuptablefindv2_default_value	?
-simple_dense_2_matmul_readvariableop_resource:<
.simple_dense_2_biasadd_readvariableop_resource:F
4simple_lowavg_vs_high_matmul_readvariableop_resource:C
5simple_lowavg_vs_high_biasadd_readvariableop_resource:F
4simple_low_vs_avghigh_matmul_readvariableop_resource:C
5simple_low_vs_avghigh_biasadd_readvariableop_resource:
identity

identity_1ѕб%simple/dense_2/BiasAdd/ReadVariableOpб$simple/dense_2/MatMul/ReadVariableOpб,simple/low_vs_avghigh/BiasAdd/ReadVariableOpб+simple/low_vs_avghigh/MatMul/ReadVariableOpб,simple/lowavg_vs_high/BiasAdd/ReadVariableOpб+simple/lowavg_vs_high/MatMul/ReadVariableOpб=simple/model_2/integer_lookup_2/None_Lookup/LookupTableFindV2б<simple/model_2/string_lookup_8/None_Lookup/LookupTableFindV2ј
=simple/model_2/tf.__operators__.getitem_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        љ
?simple/model_2/tf.__operators__.getitem_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        љ
?simple/model_2/tf.__operators__.getitem_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ф
7simple/model_2/tf.__operators__.getitem_5/strided_sliceStridedSliceproductionrecipeFsimple/model_2/tf.__operators__.getitem_5/strided_slice/stack:output:0Hsimple/model_2/tf.__operators__.getitem_5/strided_slice/stack_1:output:0Hsimple/model_2/tf.__operators__.getitem_5/strided_slice/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskј
=simple/model_2/tf.__operators__.getitem_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        љ
?simple/model_2/tf.__operators__.getitem_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        љ
?simple/model_2/tf.__operators__.getitem_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
7simple/model_2/tf.__operators__.getitem_4/strided_sliceStridedSliceproductionmillFsimple/model_2/tf.__operators__.getitem_4/strided_slice/stack:output:0Hsimple/model_2/tf.__operators__.getitem_4/strided_slice/stack_1:output:0Hsimple/model_2/tf.__operators__.getitem_4/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskч
simple/model_2/tf.stack_2/stackPack
ashcontentcolordampeningtimehoursdoughelasticityindexglutencontentmoisturepackageweightgproteinsg100gstarchcontent*
N	*
T0*'
_output_shapes
:         	*
axis         Ф
"simple/model_2/normalization_2/subSub(simple/model_2/tf.stack_2/stack:output:0$simple_model_2_normalization_2_sub_y*
T0*'
_output_shapes
:         	{
#simple/model_2/normalization_2/SqrtSqrt%simple_model_2_normalization_2_sqrt_x*
T0*
_output_shapes

:	m
(simple/model_2/normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3Х
&simple/model_2/normalization_2/MaximumMaximum'simple/model_2/normalization_2/Sqrt:y:01simple/model_2/normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:	и
&simple/model_2/normalization_2/truedivRealDiv&simple/model_2/normalization_2/sub:z:0*simple/model_2/normalization_2/Maximum:z:0*
T0*'
_output_shapes
:         	Ж
<simple/model_2/string_lookup_8/None_Lookup/LookupTableFindV2LookupTableFindV2Isimple_model_2_string_lookup_8_none_lookup_lookuptablefindv2_table_handle@simple/model_2/tf.__operators__.getitem_4/strided_slice:output:0Jsimple_model_2_string_lookup_8_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:         г
'simple/model_2/string_lookup_8/IdentityIdentityEsimple/model_2/string_lookup_8/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         Ї
-simple/model_2/string_lookup_8/bincount/ShapeShape0simple/model_2/string_lookup_8/Identity:output:0*
T0	*
_output_shapes
:w
-simple/model_2/string_lookup_8/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ┼
,simple/model_2/string_lookup_8/bincount/ProdProd6simple/model_2/string_lookup_8/bincount/Shape:output:06simple/model_2/string_lookup_8/bincount/Const:output:0*
T0*
_output_shapes
: s
1simple/model_2/string_lookup_8/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ╬
/simple/model_2/string_lookup_8/bincount/GreaterGreater5simple/model_2/string_lookup_8/bincount/Prod:output:0:simple/model_2/string_lookup_8/bincount/Greater/y:output:0*
T0*
_output_shapes
: Ў
,simple/model_2/string_lookup_8/bincount/CastCast3simple/model_2/string_lookup_8/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: ђ
/simple/model_2/string_lookup_8/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ┐
+simple/model_2/string_lookup_8/bincount/MaxMax0simple/model_2/string_lookup_8/Identity:output:08simple/model_2/string_lookup_8/bincount/Const_1:output:0*
T0	*
_output_shapes
: o
-simple/model_2/string_lookup_8/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R├
+simple/model_2/string_lookup_8/bincount/addAddV24simple/model_2/string_lookup_8/bincount/Max:output:06simple/model_2/string_lookup_8/bincount/add/y:output:0*
T0	*
_output_shapes
: Х
+simple/model_2/string_lookup_8/bincount/mulMul0simple/model_2/string_lookup_8/bincount/Cast:y:0/simple/model_2/string_lookup_8/bincount/add:z:0*
T0	*
_output_shapes
: s
1simple/model_2/string_lookup_8/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R╚
/simple/model_2/string_lookup_8/bincount/MaximumMaximum:simple/model_2/string_lookup_8/bincount/minlength:output:0/simple/model_2/string_lookup_8/bincount/mul:z:0*
T0	*
_output_shapes
: s
1simple/model_2/string_lookup_8/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R╠
/simple/model_2/string_lookup_8/bincount/MinimumMinimum:simple/model_2/string_lookup_8/bincount/maxlength:output:03simple/model_2/string_lookup_8/bincount/Maximum:z:0*
T0	*
_output_shapes
: r
/simple/model_2/string_lookup_8/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ║
5simple/model_2/string_lookup_8/bincount/DenseBincountDenseBincount0simple/model_2/string_lookup_8/Identity:output:03simple/model_2/string_lookup_8/bincount/Minimum:z:08simple/model_2/string_lookup_8/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(ь
=simple/model_2/integer_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Jsimple_model_2_integer_lookup_2_none_lookup_lookuptablefindv2_table_handle@simple/model_2/tf.__operators__.getitem_5/strided_slice:output:0Ksimple_model_2_integer_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:         «
(simple/model_2/integer_lookup_2/IdentityIdentityFsimple/model_2/integer_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         Ј
.simple/model_2/integer_lookup_2/bincount/ShapeShape1simple/model_2/integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:x
.simple/model_2/integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ╚
-simple/model_2/integer_lookup_2/bincount/ProdProd7simple/model_2/integer_lookup_2/bincount/Shape:output:07simple/model_2/integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: t
2simple/model_2/integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : Л
0simple/model_2/integer_lookup_2/bincount/GreaterGreater6simple/model_2/integer_lookup_2/bincount/Prod:output:0;simple/model_2/integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: Џ
-simple/model_2/integer_lookup_2/bincount/CastCast4simple/model_2/integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: Ђ
0simple/model_2/integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ┬
,simple/model_2/integer_lookup_2/bincount/MaxMax1simple/model_2/integer_lookup_2/Identity:output:09simple/model_2/integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: p
.simple/model_2/integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rк
,simple/model_2/integer_lookup_2/bincount/addAddV25simple/model_2/integer_lookup_2/bincount/Max:output:07simple/model_2/integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ╣
,simple/model_2/integer_lookup_2/bincount/mulMul1simple/model_2/integer_lookup_2/bincount/Cast:y:00simple/model_2/integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: t
2simple/model_2/integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R╦
0simple/model_2/integer_lookup_2/bincount/MaximumMaximum;simple/model_2/integer_lookup_2/bincount/minlength:output:00simple/model_2/integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: t
2simple/model_2/integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R¤
0simple/model_2/integer_lookup_2/bincount/MinimumMinimum;simple/model_2/integer_lookup_2/bincount/maxlength:output:04simple/model_2/integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: s
0simple/model_2/integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB Й
6simple/model_2/integer_lookup_2/bincount/DenseBincountDenseBincount1simple/model_2/integer_lookup_2/Identity:output:04simple/model_2/integer_lookup_2/bincount/Minimum:z:09simple/model_2/integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(q
&simple/model_2/tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         к
!simple/model_2/tf.concat_2/concatConcatV2*simple/model_2/normalization_2/truediv:z:0>simple/model_2/string_lookup_8/bincount/DenseBincount:output:0?simple/model_2/integer_lookup_2/bincount/DenseBincount:output:0/simple/model_2/tf.concat_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         њ
$simple/dense_2/MatMul/ReadVariableOpReadVariableOp-simple_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ф
simple/dense_2/MatMulMatMul*simple/model_2/tf.concat_2/concat:output:0,simple/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         љ
%simple/dense_2/BiasAdd/ReadVariableOpReadVariableOp.simple_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
simple/dense_2/BiasAddBiasAddsimple/dense_2/MatMul:product:0-simple/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         n
simple/dense_2/ReluRelusimple/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         а
+simple/lowavg_vs_high/MatMul/ReadVariableOpReadVariableOp4simple_lowavg_vs_high_matmul_readvariableop_resource*
_output_shapes

:*
dtype0░
simple/lowavg_vs_high/MatMulMatMul!simple/dense_2/Relu:activations:03simple/lowavg_vs_high/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ъ
,simple/lowavg_vs_high/BiasAdd/ReadVariableOpReadVariableOp5simple_lowavg_vs_high_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
simple/lowavg_vs_high/BiasAddBiasAdd&simple/lowavg_vs_high/MatMul:product:04simple/lowavg_vs_high/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
simple/lowavg_vs_high/SigmoidSigmoid&simple/lowavg_vs_high/BiasAdd:output:0*
T0*'
_output_shapes
:         а
+simple/low_vs_avghigh/MatMul/ReadVariableOpReadVariableOp4simple_low_vs_avghigh_matmul_readvariableop_resource*
_output_shapes

:*
dtype0░
simple/low_vs_avghigh/MatMulMatMul!simple/dense_2/Relu:activations:03simple/low_vs_avghigh/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ъ
,simple/low_vs_avghigh/BiasAdd/ReadVariableOpReadVariableOp5simple_low_vs_avghigh_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
simple/low_vs_avghigh/BiasAddBiasAdd&simple/low_vs_avghigh/MatMul:product:04simple/low_vs_avghigh/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
simple/low_vs_avghigh/SigmoidSigmoid&simple/low_vs_avghigh/BiasAdd:output:0*
T0*'
_output_shapes
:         p
IdentityIdentity!simple/low_vs_avghigh/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         r

Identity_1Identity!simple/lowavg_vs_high/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ╬
NoOpNoOp&^simple/dense_2/BiasAdd/ReadVariableOp%^simple/dense_2/MatMul/ReadVariableOp-^simple/low_vs_avghigh/BiasAdd/ReadVariableOp,^simple/low_vs_avghigh/MatMul/ReadVariableOp-^simple/lowavg_vs_high/BiasAdd/ReadVariableOp,^simple/lowavg_vs_high/MatMul/ReadVariableOp>^simple/model_2/integer_lookup_2/None_Lookup/LookupTableFindV2=^simple/model_2/string_lookup_8/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapesл
═:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : : : : : : : 2N
%simple/dense_2/BiasAdd/ReadVariableOp%simple/dense_2/BiasAdd/ReadVariableOp2L
$simple/dense_2/MatMul/ReadVariableOp$simple/dense_2/MatMul/ReadVariableOp2\
,simple/low_vs_avghigh/BiasAdd/ReadVariableOp,simple/low_vs_avghigh/BiasAdd/ReadVariableOp2Z
+simple/low_vs_avghigh/MatMul/ReadVariableOp+simple/low_vs_avghigh/MatMul/ReadVariableOp2\
,simple/lowavg_vs_high/BiasAdd/ReadVariableOp,simple/lowavg_vs_high/BiasAdd/ReadVariableOp2Z
+simple/lowavg_vs_high/MatMul/ReadVariableOp+simple/lowavg_vs_high/MatMul/ReadVariableOp2~
=simple/model_2/integer_lookup_2/None_Lookup/LookupTableFindV2=simple/model_2/integer_lookup_2/None_Lookup/LookupTableFindV22|
<simple/model_2/string_lookup_8/None_Lookup/LookupTableFindV2<simple/model_2/string_lookup_8/None_Lookup/LookupTableFindV2:O K
#
_output_shapes
:         
$
_user_specified_name
Ashcontent:JF
#
_output_shapes
:         

_user_specified_nameColor:WS
#
_output_shapes
:         
,
_user_specified_nameDampeningTimehours:YU
#
_output_shapes
:         
.
_user_specified_nameDoughElasticityIndex:RN
#
_output_shapes
:         
'
_user_specified_nameGlutenContent:MI
#
_output_shapes
:         
"
_user_specified_name
Moisture:SO
#
_output_shapes
:         
(
_user_specified_namePackageWeightg:SO
#
_output_shapes
:         
(
_user_specified_nameProductionMill:UQ
#
_output_shapes
:         
*
_user_specified_nameProductionRecipe:R	N
#
_output_shapes
:         
'
_user_specified_nameProteinsg100g:R
N
#
_output_shapes
:         
'
_user_specified_nameStarchContent:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
бy
▄

A__inference_simple_layer_call_and_return_conditional_losses_94358
placeholder
inputs_color
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7	
placeholder_8
placeholder_9!
model_2_normalization_2_sub_y"
model_2_normalization_2_sqrt_xF
Bmodel_2_string_lookup_8_none_lookup_lookuptablefindv2_table_handleG
Cmodel_2_string_lookup_8_none_lookup_lookuptablefindv2_default_value	G
Cmodel_2_integer_lookup_2_none_lookup_lookuptablefindv2_table_handleH
Dmodel_2_integer_lookup_2_none_lookup_lookuptablefindv2_default_value	8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:?
-lowavg_vs_high_matmul_readvariableop_resource:<
.lowavg_vs_high_biasadd_readvariableop_resource:?
-low_vs_avghigh_matmul_readvariableop_resource:<
.low_vs_avghigh_biasadd_readvariableop_resource:
identity

identity_1ѕбdense_2/BiasAdd/ReadVariableOpбdense_2/MatMul/ReadVariableOpб%low_vs_avghigh/BiasAdd/ReadVariableOpб$low_vs_avghigh/MatMul/ReadVariableOpб%lowavg_vs_high/BiasAdd/ReadVariableOpб$lowavg_vs_high/MatMul/ReadVariableOpб6model_2/integer_lookup_2/None_Lookup/LookupTableFindV2б5model_2/string_lookup_8/None_Lookup/LookupTableFindV2Є
6model_2/tf.__operators__.getitem_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ѕ
8model_2/tf.__operators__.getitem_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ѕ
8model_2/tf.__operators__.getitem_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
0model_2/tf.__operators__.getitem_5/strided_sliceStridedSliceplaceholder_7?model_2/tf.__operators__.getitem_5/strided_slice/stack:output:0Amodel_2/tf.__operators__.getitem_5/strided_slice/stack_1:output:0Amodel_2/tf.__operators__.getitem_5/strided_slice/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskЄ
6model_2/tf.__operators__.getitem_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ѕ
8model_2/tf.__operators__.getitem_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ѕ
8model_2/tf.__operators__.getitem_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
0model_2/tf.__operators__.getitem_4/strided_sliceStridedSliceplaceholder_6?model_2/tf.__operators__.getitem_4/strided_slice/stack:output:0Amodel_2/tf.__operators__.getitem_4/strided_slice/stack_1:output:0Amodel_2/tf.__operators__.getitem_4/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskЗ
model_2/tf.stack_2/stackPackplaceholderinputs_colorplaceholder_1placeholder_2placeholder_3placeholder_4placeholder_5placeholder_8placeholder_9*
N	*
T0*'
_output_shapes
:         	*
axis         ќ
model_2/normalization_2/subSub!model_2/tf.stack_2/stack:output:0model_2_normalization_2_sub_y*
T0*'
_output_shapes
:         	m
model_2/normalization_2/SqrtSqrtmodel_2_normalization_2_sqrt_x*
T0*
_output_shapes

:	f
!model_2/normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3А
model_2/normalization_2/MaximumMaximum model_2/normalization_2/Sqrt:y:0*model_2/normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:	б
model_2/normalization_2/truedivRealDivmodel_2/normalization_2/sub:z:0#model_2/normalization_2/Maximum:z:0*
T0*'
_output_shapes
:         	╬
5model_2/string_lookup_8/None_Lookup/LookupTableFindV2LookupTableFindV2Bmodel_2_string_lookup_8_none_lookup_lookuptablefindv2_table_handle9model_2/tf.__operators__.getitem_4/strided_slice:output:0Cmodel_2_string_lookup_8_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:         ъ
 model_2/string_lookup_8/IdentityIdentity>model_2/string_lookup_8/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         
&model_2/string_lookup_8/bincount/ShapeShape)model_2/string_lookup_8/Identity:output:0*
T0	*
_output_shapes
:p
&model_2/string_lookup_8/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ░
%model_2/string_lookup_8/bincount/ProdProd/model_2/string_lookup_8/bincount/Shape:output:0/model_2/string_lookup_8/bincount/Const:output:0*
T0*
_output_shapes
: l
*model_2/string_lookup_8/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ╣
(model_2/string_lookup_8/bincount/GreaterGreater.model_2/string_lookup_8/bincount/Prod:output:03model_2/string_lookup_8/bincount/Greater/y:output:0*
T0*
_output_shapes
: І
%model_2/string_lookup_8/bincount/CastCast,model_2/string_lookup_8/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: y
(model_2/string_lookup_8/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ф
$model_2/string_lookup_8/bincount/MaxMax)model_2/string_lookup_8/Identity:output:01model_2/string_lookup_8/bincount/Const_1:output:0*
T0	*
_output_shapes
: h
&model_2/string_lookup_8/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R«
$model_2/string_lookup_8/bincount/addAddV2-model_2/string_lookup_8/bincount/Max:output:0/model_2/string_lookup_8/bincount/add/y:output:0*
T0	*
_output_shapes
: А
$model_2/string_lookup_8/bincount/mulMul)model_2/string_lookup_8/bincount/Cast:y:0(model_2/string_lookup_8/bincount/add:z:0*
T0	*
_output_shapes
: l
*model_2/string_lookup_8/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R│
(model_2/string_lookup_8/bincount/MaximumMaximum3model_2/string_lookup_8/bincount/minlength:output:0(model_2/string_lookup_8/bincount/mul:z:0*
T0	*
_output_shapes
: l
*model_2/string_lookup_8/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rи
(model_2/string_lookup_8/bincount/MinimumMinimum3model_2/string_lookup_8/bincount/maxlength:output:0,model_2/string_lookup_8/bincount/Maximum:z:0*
T0	*
_output_shapes
: k
(model_2/string_lookup_8/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ъ
.model_2/string_lookup_8/bincount/DenseBincountDenseBincount)model_2/string_lookup_8/Identity:output:0,model_2/string_lookup_8/bincount/Minimum:z:01model_2/string_lookup_8/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(Л
6model_2/integer_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Cmodel_2_integer_lookup_2_none_lookup_lookuptablefindv2_table_handle9model_2/tf.__operators__.getitem_5/strided_slice:output:0Dmodel_2_integer_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:         а
!model_2/integer_lookup_2/IdentityIdentity?model_2/integer_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         Ђ
'model_2/integer_lookup_2/bincount/ShapeShape*model_2/integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:q
'model_2/integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: │
&model_2/integer_lookup_2/bincount/ProdProd0model_2/integer_lookup_2/bincount/Shape:output:00model_2/integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: m
+model_2/integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ╝
)model_2/integer_lookup_2/bincount/GreaterGreater/model_2/integer_lookup_2/bincount/Prod:output:04model_2/integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: Ї
&model_2/integer_lookup_2/bincount/CastCast-model_2/integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: z
)model_2/integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Г
%model_2/integer_lookup_2/bincount/MaxMax*model_2/integer_lookup_2/Identity:output:02model_2/integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: i
'model_2/integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R▒
%model_2/integer_lookup_2/bincount/addAddV2.model_2/integer_lookup_2/bincount/Max:output:00model_2/integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ц
%model_2/integer_lookup_2/bincount/mulMul*model_2/integer_lookup_2/bincount/Cast:y:0)model_2/integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: m
+model_2/integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RХ
)model_2/integer_lookup_2/bincount/MaximumMaximum4model_2/integer_lookup_2/bincount/minlength:output:0)model_2/integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: m
+model_2/integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 R║
)model_2/integer_lookup_2/bincount/MinimumMinimum4model_2/integer_lookup_2/bincount/maxlength:output:0-model_2/integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: l
)model_2/integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB б
/model_2/integer_lookup_2/bincount/DenseBincountDenseBincount*model_2/integer_lookup_2/Identity:output:0-model_2/integer_lookup_2/bincount/Minimum:z:02model_2/integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(j
model_2/tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         Б
model_2/tf.concat_2/concatConcatV2#model_2/normalization_2/truediv:z:07model_2/string_lookup_8/bincount/DenseBincount:output:08model_2/integer_lookup_2/bincount/DenseBincount:output:0(model_2/tf.concat_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         ё
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ќ
dense_2/MatMulMatMul#model_2/tf.concat_2/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ј
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         `
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         њ
$lowavg_vs_high/MatMul/ReadVariableOpReadVariableOp-lowavg_vs_high_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Џ
lowavg_vs_high/MatMulMatMuldense_2/Relu:activations:0,lowavg_vs_high/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         љ
%lowavg_vs_high/BiasAdd/ReadVariableOpReadVariableOp.lowavg_vs_high_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
lowavg_vs_high/BiasAddBiasAddlowavg_vs_high/MatMul:product:0-lowavg_vs_high/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         t
lowavg_vs_high/SigmoidSigmoidlowavg_vs_high/BiasAdd:output:0*
T0*'
_output_shapes
:         њ
$low_vs_avghigh/MatMul/ReadVariableOpReadVariableOp-low_vs_avghigh_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Џ
low_vs_avghigh/MatMulMatMuldense_2/Relu:activations:0,low_vs_avghigh/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         љ
%low_vs_avghigh/BiasAdd/ReadVariableOpReadVariableOp.low_vs_avghigh_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Б
low_vs_avghigh/BiasAddBiasAddlow_vs_avghigh/MatMul:product:0-low_vs_avghigh/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         t
low_vs_avghigh/SigmoidSigmoidlow_vs_avghigh/BiasAdd:output:0*
T0*'
_output_shapes
:         i
IdentityIdentitylow_vs_avghigh/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         k

Identity_1Identitylowavg_vs_high/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ќ
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp&^low_vs_avghigh/BiasAdd/ReadVariableOp%^low_vs_avghigh/MatMul/ReadVariableOp&^lowavg_vs_high/BiasAdd/ReadVariableOp%^lowavg_vs_high/MatMul/ReadVariableOp7^model_2/integer_lookup_2/None_Lookup/LookupTableFindV26^model_2/string_lookup_8/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapesл
═:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2N
%low_vs_avghigh/BiasAdd/ReadVariableOp%low_vs_avghigh/BiasAdd/ReadVariableOp2L
$low_vs_avghigh/MatMul/ReadVariableOp$low_vs_avghigh/MatMul/ReadVariableOp2N
%lowavg_vs_high/BiasAdd/ReadVariableOp%lowavg_vs_high/BiasAdd/ReadVariableOp2L
$lowavg_vs_high/MatMul/ReadVariableOp$lowavg_vs_high/MatMul/ReadVariableOp2p
6model_2/integer_lookup_2/None_Lookup/LookupTableFindV26model_2/integer_lookup_2/None_Lookup/LookupTableFindV22n
5model_2/string_lookup_8/None_Lookup/LookupTableFindV25model_2/string_lookup_8/None_Lookup/LookupTableFindV2:[ W
#
_output_shapes
:         
0
_user_specified_nameinputs/Ash content (%):QM
#
_output_shapes
:         
&
_user_specified_nameinputs/Color:b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dampening Time (hours):b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dough Elasticity Index:^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Gluten Content (%):XT
#
_output_shapes
:         
-
_user_specified_nameinputs/Moisture (%):^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Package Weight (g):[W
#
_output_shapes
:         
0
_user_specified_nameinputs/Production Mill:]Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Production Recipe:]	Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Proteins (g)/100g:^
Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Starch Content (%):$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
ћ
Г
#__inference_signature_wrapper_94080

ashcontent	
color
dampeningtimehours
doughelasticityindex
glutencontent
moisture
packageweightg
productionmill
productionrecipe	
proteinsg100g
starchcontent
unknown
	unknown_0
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:
identity

identity_1ѕбStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCall
ashcontentcolordampeningtimehoursdoughelasticityindexglutencontentmoisturepackageweightgproductionmillproductionrecipeproteinsg100gstarchcontentunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2			*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         :         *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *)
f$R"
 __inference__wrapped_model_93213o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapesл
═:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:         
$
_user_specified_name
Ashcontent:JF
#
_output_shapes
:         

_user_specified_nameColor:WS
#
_output_shapes
:         
,
_user_specified_nameDampeningTimehours:YU
#
_output_shapes
:         
.
_user_specified_nameDoughElasticityIndex:RN
#
_output_shapes
:         
'
_user_specified_nameGlutenContent:MI
#
_output_shapes
:         
"
_user_specified_name
Moisture:SO
#
_output_shapes
:         
(
_user_specified_namePackageWeightg:SO
#
_output_shapes
:         
(
_user_specified_nameProductionMill:UQ
#
_output_shapes
:         
*
_user_specified_nameProductionRecipe:R	N
#
_output_shapes
:         
'
_user_specified_nameProteinsg100g:R
N
#
_output_shapes
:         
'
_user_specified_nameStarchContent:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
┘%
ћ
A__inference_simple_layer_call_and_return_conditional_losses_93988

ashcontent	
color
dampeningtimehours
doughelasticityindex
glutencontent
moisture
packageweightg
productionmill
productionrecipe	
proteinsg100g
starchcontent
model_2_93958
model_2_93960
model_2_93962
model_2_93964	
model_2_93966
model_2_93968	
dense_2_93971:
dense_2_93973:&
lowavg_vs_high_93976:"
lowavg_vs_high_93978:&
low_vs_avghigh_93981:"
low_vs_avghigh_93983:
identity

identity_1ѕбdense_2/StatefulPartitionedCallб&low_vs_avghigh/StatefulPartitionedCallб&lowavg_vs_high/StatefulPartitionedCallбmodel_2/StatefulPartitionedCallл
model_2/StatefulPartitionedCallStatefulPartitionedCall
ashcontentcolordampeningtimehoursdoughelasticityindexglutencontentmoisturepackageweightgproductionmillproductionrecipeproteinsg100gstarchcontentmodel_2_93958model_2_93960model_2_93962model_2_93964model_2_93966model_2_93968*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_93303ј
dense_2/StatefulPartitionedCallStatefulPartitionedCall(model_2/StatefulPartitionedCall:output:0dense_2_93971dense_2_93973*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_93678ф
&lowavg_vs_high/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0lowavg_vs_high_93976lowavg_vs_high_93978*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_lowavg_vs_high_layer_call_and_return_conditional_losses_93695ф
&low_vs_avghigh/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0low_vs_avghigh_93981low_vs_avghigh_93983*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_low_vs_avghigh_layer_call_and_return_conditional_losses_93712~
IdentityIdentity/low_vs_avghigh/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ђ

Identity_1Identity/lowavg_vs_high/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ▄
NoOpNoOp ^dense_2/StatefulPartitionedCall'^low_vs_avghigh/StatefulPartitionedCall'^lowavg_vs_high/StatefulPartitionedCall ^model_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapesл
═:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&low_vs_avghigh/StatefulPartitionedCall&low_vs_avghigh/StatefulPartitionedCall2P
&lowavg_vs_high/StatefulPartitionedCall&lowavg_vs_high/StatefulPartitionedCall2B
model_2/StatefulPartitionedCallmodel_2/StatefulPartitionedCall:O K
#
_output_shapes
:         
$
_user_specified_name
Ashcontent:JF
#
_output_shapes
:         

_user_specified_nameColor:WS
#
_output_shapes
:         
,
_user_specified_nameDampeningTimehours:YU
#
_output_shapes
:         
.
_user_specified_nameDoughElasticityIndex:RN
#
_output_shapes
:         
'
_user_specified_nameGlutenContent:MI
#
_output_shapes
:         
"
_user_specified_name
Moisture:SO
#
_output_shapes
:         
(
_user_specified_namePackageWeightg:SO
#
_output_shapes
:         
(
_user_specified_nameProductionMill:UQ
#
_output_shapes
:         
*
_user_specified_nameProductionRecipe:R	N
#
_output_shapes
:         
'
_user_specified_nameProteinsg100g:R
N
#
_output_shapes
:         
'
_user_specified_nameStarchContent:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
џ
,
__inference__destroyer_94687
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
ФT
├
B__inference_model_2_layer_call_and_return_conditional_losses_93551

ashcontent	
color
dampeningtimehours
doughelasticityindex
glutencontent
moisture
packageweightg
productionmill
productionrecipe	
proteinsg100g
starchcontent
normalization_2_sub_y
normalization_2_sqrt_x>
:string_lookup_8_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_8_none_lookup_lookuptablefindv2_default_value	?
;integer_lookup_2_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_2_none_lookup_lookuptablefindv2_default_value	
identityѕб.integer_lookup_2/None_Lookup/LookupTableFindV2б-string_lookup_8/None_Lookup/LookupTableFindV2
.tf.__operators__.getitem_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      №
(tf.__operators__.getitem_5/strided_sliceStridedSliceproductionrecipe7tf.__operators__.getitem_5/strided_slice/stack:output:09tf.__operators__.getitem_5/strided_slice/stack_1:output:09tf.__operators__.getitem_5/strided_slice/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask
.tf.__operators__.getitem_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ь
(tf.__operators__.getitem_4/strided_sliceStridedSliceproductionmill7tf.__operators__.getitem_4/strided_slice/stack:output:09tf.__operators__.getitem_4/strided_slice/stack_1:output:09tf.__operators__.getitem_4/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskВ
tf.stack_2/stackPack
ashcontentcolordampeningtimehoursdoughelasticityindexglutencontentmoisturepackageweightgproteinsg100gstarchcontent*
N	*
T0*'
_output_shapes
:         	*
axis         ~
normalization_2/subSubtf.stack_2/stack:output:0normalization_2_sub_y*
T0*'
_output_shapes
:         	]
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*
_output_shapes

:	^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3Ѕ
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:	і
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:         	«
-string_lookup_8/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_8_none_lookup_lookuptablefindv2_table_handle1tf.__operators__.getitem_4/strided_slice:output:0;string_lookup_8_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:         ј
string_lookup_8/IdentityIdentity6string_lookup_8/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         o
string_lookup_8/bincount/ShapeShape!string_lookup_8/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_8/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ў
string_lookup_8/bincount/ProdProd'string_lookup_8/bincount/Shape:output:0'string_lookup_8/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_8/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : А
 string_lookup_8/bincount/GreaterGreater&string_lookup_8/bincount/Prod:output:0+string_lookup_8/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_8/bincount/CastCast$string_lookup_8/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_8/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       њ
string_lookup_8/bincount/MaxMax!string_lookup_8/Identity:output:0)string_lookup_8/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_8/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rќ
string_lookup_8/bincount/addAddV2%string_lookup_8/bincount/Max:output:0'string_lookup_8/bincount/add/y:output:0*
T0	*
_output_shapes
: Ѕ
string_lookup_8/bincount/mulMul!string_lookup_8/bincount/Cast:y:0 string_lookup_8/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_8/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RЏ
 string_lookup_8/bincount/MaximumMaximum+string_lookup_8/bincount/minlength:output:0 string_lookup_8/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_8/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RЪ
 string_lookup_8/bincount/MinimumMinimum+string_lookup_8/bincount/maxlength:output:0$string_lookup_8/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_8/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ■
&string_lookup_8/bincount/DenseBincountDenseBincount!string_lookup_8/Identity:output:0$string_lookup_8/bincount/Minimum:z:0)string_lookup_8/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(▒
.integer_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_2_none_lookup_lookuptablefindv2_table_handle1tf.__operators__.getitem_5/strided_slice:output:0<integer_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:         љ
integer_lookup_2/IdentityIdentity7integer_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         q
integer_lookup_2/bincount/ShapeShape"integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: Џ
integer_lookup_2/bincount/ProdProd(integer_lookup_2/bincount/Shape:output:0(integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ц
!integer_lookup_2/bincount/GreaterGreater'integer_lookup_2/bincount/Prod:output:0,integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_2/bincount/CastCast%integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ћ
integer_lookup_2/bincount/MaxMax"integer_lookup_2/Identity:output:0*integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RЎ
integer_lookup_2/bincount/addAddV2&integer_lookup_2/bincount/Max:output:0(integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ї
integer_lookup_2/bincount/mulMul"integer_lookup_2/bincount/Cast:y:0!integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rъ
!integer_lookup_2/bincount/MaximumMaximum,integer_lookup_2/bincount/minlength:output:0!integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rб
!integer_lookup_2/bincount/MinimumMinimum,integer_lookup_2/bincount/maxlength:output:0%integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ѓ
'integer_lookup_2/bincount/DenseBincountDenseBincount"integer_lookup_2/Identity:output:0%integer_lookup_2/bincount/Minimum:z:0*integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(b
tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ч
tf.concat_2/concatConcatV2normalization_2/truediv:z:0/string_lookup_8/bincount/DenseBincount:output:00integer_lookup_2/bincount/DenseBincount:output:0 tf.concat_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         j
IdentityIdentitytf.concat_2/concat:output:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp/^integer_lookup_2/None_Lookup/LookupTableFindV2.^string_lookup_8/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*о
_input_shapes─
┴:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : 2`
.integer_lookup_2/None_Lookup/LookupTableFindV2.integer_lookup_2/None_Lookup/LookupTableFindV22^
-string_lookup_8/None_Lookup/LookupTableFindV2-string_lookup_8/None_Lookup/LookupTableFindV2:O K
#
_output_shapes
:         
$
_user_specified_name
Ashcontent:JF
#
_output_shapes
:         

_user_specified_nameColor:WS
#
_output_shapes
:         
,
_user_specified_nameDampeningTimehours:YU
#
_output_shapes
:         
.
_user_specified_nameDoughElasticityIndex:RN
#
_output_shapes
:         
'
_user_specified_nameGlutenContent:MI
#
_output_shapes
:         
"
_user_specified_name
Moisture:SO
#
_output_shapes
:         
(
_user_specified_namePackageWeightg:SO
#
_output_shapes
:         
(
_user_specified_nameProductionMill:UQ
#
_output_shapes
:         
*
_user_specified_nameProductionRecipe:R	N
#
_output_shapes
:         
'
_user_specified_nameProteinsg100g:R
N
#
_output_shapes
:         
'
_user_specified_nameStarchContent:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
ђ
■
'__inference_model_2_layer_call_fn_93318

ashcontent	
color
dampeningtimehours
doughelasticityindex
glutencontent
moisture
packageweightg
productionmill
productionrecipe	
proteinsg100g
starchcontent
unknown
	unknown_0
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
identityѕбStatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCall
ashcontentcolordampeningtimehoursdoughelasticityindexglutencontentmoisturepackageweightgproductionmillproductionrecipeproteinsg100gstarchcontentunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_93303o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*о
_input_shapes─
┴:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:         
$
_user_specified_name
Ashcontent:JF
#
_output_shapes
:         

_user_specified_nameColor:WS
#
_output_shapes
:         
,
_user_specified_nameDampeningTimehours:YU
#
_output_shapes
:         
.
_user_specified_nameDoughElasticityIndex:RN
#
_output_shapes
:         
'
_user_specified_nameGlutenContent:MI
#
_output_shapes
:         
"
_user_specified_name
Moisture:SO
#
_output_shapes
:         
(
_user_specified_namePackageWeightg:SO
#
_output_shapes
:         
(
_user_specified_nameProductionMill:UQ
#
_output_shapes
:         
*
_user_specified_nameProductionRecipe:R	N
#
_output_shapes
:         
'
_user_specified_nameProteinsg100g:R
N
#
_output_shapes
:         
'
_user_specified_nameStarchContent:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
а
г
&__inference_simple_layer_call_fn_94162
placeholder
inputs_color
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7	
placeholder_8
placeholder_9
unknown
	unknown_0
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:
identity

identity_1ѕбStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallplaceholderinputs_colorplaceholder_1placeholder_2placeholder_3placeholder_4placeholder_5placeholder_6placeholder_7placeholder_8placeholder_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2			*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         :         *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_simple_layer_call_and_return_conditional_losses_93875o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapesл
═:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:         
0
_user_specified_nameinputs/Ash content (%):QM
#
_output_shapes
:         
&
_user_specified_nameinputs/Color:b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dampening Time (hours):b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dough Elasticity Index:^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Gluten Content (%):XT
#
_output_shapes
:         
-
_user_specified_nameinputs/Moisture (%):^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Package Weight (g):[W
#
_output_shapes
:         
0
_user_specified_nameinputs/Production Mill:]Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Production Recipe:]	Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Proteins (g)/100g:^
Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Starch Content (%):$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
У
Щ
'__inference_model_2_layer_call_fn_94457
placeholder
inputs_color
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7	
placeholder_8
placeholder_9
unknown
	unknown_0
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
identityѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallplaceholderinputs_colorplaceholder_1placeholder_2placeholder_3placeholder_4placeholder_5placeholder_6placeholder_7placeholder_8placeholder_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_93433o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*о
_input_shapes─
┴:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:         
0
_user_specified_nameinputs/Ash content (%):QM
#
_output_shapes
:         
&
_user_specified_nameinputs/Color:b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dampening Time (hours):b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dough Elasticity Index:^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Gluten Content (%):XT
#
_output_shapes
:         
-
_user_specified_nameinputs/Moisture (%):^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Package Weight (g):[W
#
_output_shapes
:         
0
_user_specified_nameinputs/Production Mill:]Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Production Recipe:]	Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Proteins (g)/100g:^
Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Starch Content (%):$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
¤
Џ
.__inference_lowavg_vs_high_layer_call_fn_94658

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_lowavg_vs_high_layer_call_and_return_conditional_losses_93695o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ї
э
__inference_<lambda>_947138
4key_value_init63478_lookuptableimportv2_table_handle0
,key_value_init63478_lookuptableimportv2_keys2
.key_value_init63478_lookuptableimportv2_values	
identityѕб'key_value_init63478/LookupTableImportV2 
'key_value_init63478/LookupTableImportV2LookupTableImportV24key_value_init63478_lookuptableimportv2_table_handle,key_value_init63478_lookuptableimportv2_keys.key_value_init63478_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init63478/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2R
'key_value_init63478/LookupTableImportV2'key_value_init63478/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
¤
:
__inference__creator_94674
identityѕб
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name63479*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
д'
┴
__inference_adapt_step_94403
iterator%
add_readvariableop_resource:	 %
readvariableop_resource:	'
readvariableop_2_resource:	ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_2бIteratorGetNextбReadVariableOpбReadVariableOp_1бReadVariableOp_2бadd/ReadVariableOp▒
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:         	*&
output_shapes
:         	*
output_types
2h
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ћ
moments/meanMeanIteratorGetNext:components:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:	*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:	Ю
moments/SquaredDifferenceSquaredDifferenceIteratorGetNext:components:0moments/StopGradient:output:0*
T0*'
_output_shapes
:         	l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ъ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:	*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:	*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:	*
squeeze_dims
 a
ShapeShapeIteratorGetNext:components:0*
T0*
_output_shapes
:*
out_type0	Z
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB: O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ъ
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: K
CastCastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_1Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: I
truedivRealDivCast:y:0
Cast_1:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:	X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:	G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:	J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:	f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:	*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:	E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:	V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:	L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:	Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:	I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:	I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	Ц
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(ў
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0*
validate_shape(џ
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*
validate_shape(*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator
Ї
ч
__inference__initializer_946828
4key_value_init63478_lookuptableimportv2_table_handle0
,key_value_init63478_lookuptableimportv2_keys2
.key_value_init63478_lookuptableimportv2_values	
identityѕб'key_value_init63478/LookupTableImportV2 
'key_value_init63478/LookupTableImportV2LookupTableImportV24key_value_init63478_lookuptableimportv2_table_handle,key_value_init63478_lookuptableimportv2_keys.key_value_init63478_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init63478/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2R
'key_value_init63478/LookupTableImportV2'key_value_init63478/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
а
г
&__inference_simple_layer_call_fn_94121
placeholder
inputs_color
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7	
placeholder_8
placeholder_9
unknown
	unknown_0
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:
identity

identity_1ѕбStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallplaceholderinputs_colorplaceholder_1placeholder_2placeholder_3placeholder_4placeholder_5placeholder_6placeholder_7placeholder_8placeholder_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2			*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         :         *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_simple_layer_call_and_return_conditional_losses_93720o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapesл
═:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
#
_output_shapes
:         
0
_user_specified_nameinputs/Ash content (%):QM
#
_output_shapes
:         
&
_user_specified_nameinputs/Color:b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dampening Time (hours):b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dough Elasticity Index:^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Gluten Content (%):XT
#
_output_shapes
:         
-
_user_specified_nameinputs/Moisture (%):^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Package Weight (g):[W
#
_output_shapes
:         
0
_user_specified_nameinputs/Production Mill:]Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Production Recipe:]	Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Proteins (g)/100g:^
Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Starch Content (%):$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
вR
і
B__inference_model_2_layer_call_and_return_conditional_losses_93303

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8	
inputs_9
	inputs_10
normalization_2_sub_y
normalization_2_sqrt_x>
:string_lookup_8_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_8_none_lookup_lookuptablefindv2_default_value	?
;integer_lookup_2_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_2_none_lookup_lookuptablefindv2_default_value	
identityѕб.integer_lookup_2/None_Lookup/LookupTableFindV2б-string_lookup_8/None_Lookup/LookupTableFindV2
.tf.__operators__.getitem_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      у
(tf.__operators__.getitem_5/strided_sliceStridedSliceinputs_87tf.__operators__.getitem_5/strided_slice/stack:output:09tf.__operators__.getitem_5/strided_slice/stack_1:output:09tf.__operators__.getitem_5/strided_slice/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask
.tf.__operators__.getitem_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      у
(tf.__operators__.getitem_4/strided_sliceStridedSliceinputs_77tf.__operators__.getitem_4/strided_slice/stack:output:09tf.__operators__.getitem_4/strided_slice/stack_1:output:09tf.__operators__.getitem_4/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask┴
tf.stack_2/stackPackinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_9	inputs_10*
N	*
T0*'
_output_shapes
:         	*
axis         ~
normalization_2/subSubtf.stack_2/stack:output:0normalization_2_sub_y*
T0*'
_output_shapes
:         	]
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*
_output_shapes

:	^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3Ѕ
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:	і
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:         	«
-string_lookup_8/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_8_none_lookup_lookuptablefindv2_table_handle1tf.__operators__.getitem_4/strided_slice:output:0;string_lookup_8_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:         ј
string_lookup_8/IdentityIdentity6string_lookup_8/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         o
string_lookup_8/bincount/ShapeShape!string_lookup_8/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_8/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ў
string_lookup_8/bincount/ProdProd'string_lookup_8/bincount/Shape:output:0'string_lookup_8/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_8/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : А
 string_lookup_8/bincount/GreaterGreater&string_lookup_8/bincount/Prod:output:0+string_lookup_8/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_8/bincount/CastCast$string_lookup_8/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_8/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       њ
string_lookup_8/bincount/MaxMax!string_lookup_8/Identity:output:0)string_lookup_8/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_8/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rќ
string_lookup_8/bincount/addAddV2%string_lookup_8/bincount/Max:output:0'string_lookup_8/bincount/add/y:output:0*
T0	*
_output_shapes
: Ѕ
string_lookup_8/bincount/mulMul!string_lookup_8/bincount/Cast:y:0 string_lookup_8/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_8/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RЏ
 string_lookup_8/bincount/MaximumMaximum+string_lookup_8/bincount/minlength:output:0 string_lookup_8/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_8/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RЪ
 string_lookup_8/bincount/MinimumMinimum+string_lookup_8/bincount/maxlength:output:0$string_lookup_8/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_8/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ■
&string_lookup_8/bincount/DenseBincountDenseBincount!string_lookup_8/Identity:output:0$string_lookup_8/bincount/Minimum:z:0)string_lookup_8/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(▒
.integer_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_2_none_lookup_lookuptablefindv2_table_handle1tf.__operators__.getitem_5/strided_slice:output:0<integer_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:         љ
integer_lookup_2/IdentityIdentity7integer_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         q
integer_lookup_2/bincount/ShapeShape"integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: Џ
integer_lookup_2/bincount/ProdProd(integer_lookup_2/bincount/Shape:output:0(integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ц
!integer_lookup_2/bincount/GreaterGreater'integer_lookup_2/bincount/Prod:output:0,integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_2/bincount/CastCast%integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ћ
integer_lookup_2/bincount/MaxMax"integer_lookup_2/Identity:output:0*integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RЎ
integer_lookup_2/bincount/addAddV2&integer_lookup_2/bincount/Max:output:0(integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ї
integer_lookup_2/bincount/mulMul"integer_lookup_2/bincount/Cast:y:0!integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rъ
!integer_lookup_2/bincount/MaximumMaximum,integer_lookup_2/bincount/minlength:output:0!integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rб
!integer_lookup_2/bincount/MinimumMinimum,integer_lookup_2/bincount/maxlength:output:0%integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ѓ
'integer_lookup_2/bincount/DenseBincountDenseBincount"integer_lookup_2/Identity:output:0%integer_lookup_2/bincount/Minimum:z:0*integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(b
tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ч
tf.concat_2/concatConcatV2normalization_2/truediv:z:0/string_lookup_8/bincount/DenseBincount:output:00integer_lookup_2/bincount/DenseBincount:output:0 tf.concat_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         j
IdentityIdentitytf.concat_2/concat:output:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp/^integer_lookup_2/None_Lookup/LookupTableFindV2.^string_lookup_8/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*о
_input_shapes─
┴:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : 2`
.integer_lookup_2/None_Lookup/LookupTableFindV2.integer_lookup_2/None_Lookup/LookupTableFindV22^
-string_lookup_8/None_Lookup/LookupTableFindV2-string_lookup_8/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:KG
#
_output_shapes
:         
 
_user_specified_nameinputs:K	G
#
_output_shapes
:         
 
_user_specified_nameinputs:K
G
#
_output_shapes
:         
 
_user_specified_nameinputs:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
Ў

з
B__inference_dense_2_layer_call_and_return_conditional_losses_94629

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ї
ч
__inference__initializer_947008
4key_value_init63522_lookuptableimportv2_table_handle0
,key_value_init63522_lookuptableimportv2_keys	2
.key_value_init63522_lookuptableimportv2_values	
identityѕб'key_value_init63522/LookupTableImportV2 
'key_value_init63522/LookupTableImportV2LookupTableImportV24key_value_init63522_lookuptableimportv2_table_handle,key_value_init63522_lookuptableimportv2_keys.key_value_init63522_lookuptableimportv2_values*	
Tin0	*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init63522/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2R
'key_value_init63522/LookupTableImportV2'key_value_init63522/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
Ъ

Щ
I__inference_lowavg_vs_high_layer_call_and_return_conditional_losses_94669

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
¤
:
__inference__creator_94692
identityѕб
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name63523*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
џ
,
__inference__destroyer_94705
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
ЊU
┐
B__inference_model_2_layer_call_and_return_conditional_losses_94609
placeholder
inputs_color
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7	
placeholder_8
placeholder_9
normalization_2_sub_y
normalization_2_sqrt_x>
:string_lookup_8_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_8_none_lookup_lookuptablefindv2_default_value	?
;integer_lookup_2_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_2_none_lookup_lookuptablefindv2_default_value	
identityѕб.integer_lookup_2/None_Lookup/LookupTableFindV2б-string_lookup_8/None_Lookup/LookupTableFindV2
.tf.__operators__.getitem_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      В
(tf.__operators__.getitem_5/strided_sliceStridedSliceplaceholder_77tf.__operators__.getitem_5/strided_slice/stack:output:09tf.__operators__.getitem_5/strided_slice/stack_1:output:09tf.__operators__.getitem_5/strided_slice/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask
.tf.__operators__.getitem_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      В
(tf.__operators__.getitem_4/strided_sliceStridedSliceplaceholder_67tf.__operators__.getitem_4/strided_slice/stack:output:09tf.__operators__.getitem_4/strided_slice/stack_1:output:09tf.__operators__.getitem_4/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskВ
tf.stack_2/stackPackplaceholderinputs_colorplaceholder_1placeholder_2placeholder_3placeholder_4placeholder_5placeholder_8placeholder_9*
N	*
T0*'
_output_shapes
:         	*
axis         ~
normalization_2/subSubtf.stack_2/stack:output:0normalization_2_sub_y*
T0*'
_output_shapes
:         	]
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*
_output_shapes

:	^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3Ѕ
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:	і
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:         	«
-string_lookup_8/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_8_none_lookup_lookuptablefindv2_table_handle1tf.__operators__.getitem_4/strided_slice:output:0;string_lookup_8_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:         ј
string_lookup_8/IdentityIdentity6string_lookup_8/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         o
string_lookup_8/bincount/ShapeShape!string_lookup_8/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_8/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ў
string_lookup_8/bincount/ProdProd'string_lookup_8/bincount/Shape:output:0'string_lookup_8/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_8/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : А
 string_lookup_8/bincount/GreaterGreater&string_lookup_8/bincount/Prod:output:0+string_lookup_8/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_8/bincount/CastCast$string_lookup_8/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_8/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       њ
string_lookup_8/bincount/MaxMax!string_lookup_8/Identity:output:0)string_lookup_8/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_8/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rќ
string_lookup_8/bincount/addAddV2%string_lookup_8/bincount/Max:output:0'string_lookup_8/bincount/add/y:output:0*
T0	*
_output_shapes
: Ѕ
string_lookup_8/bincount/mulMul!string_lookup_8/bincount/Cast:y:0 string_lookup_8/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_8/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RЏ
 string_lookup_8/bincount/MaximumMaximum+string_lookup_8/bincount/minlength:output:0 string_lookup_8/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_8/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RЪ
 string_lookup_8/bincount/MinimumMinimum+string_lookup_8/bincount/maxlength:output:0$string_lookup_8/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_8/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ■
&string_lookup_8/bincount/DenseBincountDenseBincount!string_lookup_8/Identity:output:0$string_lookup_8/bincount/Minimum:z:0)string_lookup_8/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(▒
.integer_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_2_none_lookup_lookuptablefindv2_table_handle1tf.__operators__.getitem_5/strided_slice:output:0<integer_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:         љ
integer_lookup_2/IdentityIdentity7integer_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         q
integer_lookup_2/bincount/ShapeShape"integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: Џ
integer_lookup_2/bincount/ProdProd(integer_lookup_2/bincount/Shape:output:0(integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ц
!integer_lookup_2/bincount/GreaterGreater'integer_lookup_2/bincount/Prod:output:0,integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_2/bincount/CastCast%integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ћ
integer_lookup_2/bincount/MaxMax"integer_lookup_2/Identity:output:0*integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RЎ
integer_lookup_2/bincount/addAddV2&integer_lookup_2/bincount/Max:output:0(integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ї
integer_lookup_2/bincount/mulMul"integer_lookup_2/bincount/Cast:y:0!integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rъ
!integer_lookup_2/bincount/MaximumMaximum,integer_lookup_2/bincount/minlength:output:0!integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rб
!integer_lookup_2/bincount/MinimumMinimum,integer_lookup_2/bincount/maxlength:output:0%integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ѓ
'integer_lookup_2/bincount/DenseBincountDenseBincount"integer_lookup_2/Identity:output:0%integer_lookup_2/bincount/Minimum:z:0*integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(b
tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ч
tf.concat_2/concatConcatV2normalization_2/truediv:z:0/string_lookup_8/bincount/DenseBincount:output:00integer_lookup_2/bincount/DenseBincount:output:0 tf.concat_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         j
IdentityIdentitytf.concat_2/concat:output:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp/^integer_lookup_2/None_Lookup/LookupTableFindV2.^string_lookup_8/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*о
_input_shapes─
┴:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : 2`
.integer_lookup_2/None_Lookup/LookupTableFindV2.integer_lookup_2/None_Lookup/LookupTableFindV22^
-string_lookup_8/None_Lookup/LookupTableFindV2-string_lookup_8/None_Lookup/LookupTableFindV2:[ W
#
_output_shapes
:         
0
_user_specified_nameinputs/Ash content (%):QM
#
_output_shapes
:         
&
_user_specified_nameinputs/Color:b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dampening Time (hours):b^
#
_output_shapes
:         
7
_user_specified_nameinputs/Dough Elasticity Index:^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Gluten Content (%):XT
#
_output_shapes
:         
-
_user_specified_nameinputs/Moisture (%):^Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Package Weight (g):[W
#
_output_shapes
:         
0
_user_specified_nameinputs/Production Mill:]Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Production Recipe:]	Y
#
_output_shapes
:         
2
_user_specified_nameinputs/Proteins (g)/100g:^
Z
#
_output_shapes
:         
3
_user_specified_nameinputs/Starch Content (%):$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
ФT
├
B__inference_model_2_layer_call_and_return_conditional_losses_93627

ashcontent	
color
dampeningtimehours
doughelasticityindex
glutencontent
moisture
packageweightg
productionmill
productionrecipe	
proteinsg100g
starchcontent
normalization_2_sub_y
normalization_2_sqrt_x>
:string_lookup_8_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_8_none_lookup_lookuptablefindv2_default_value	?
;integer_lookup_2_none_lookup_lookuptablefindv2_table_handle@
<integer_lookup_2_none_lookup_lookuptablefindv2_default_value	
identityѕб.integer_lookup_2/None_Lookup/LookupTableFindV2б-string_lookup_8/None_Lookup/LookupTableFindV2
.tf.__operators__.getitem_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      №
(tf.__operators__.getitem_5/strided_sliceStridedSliceproductionrecipe7tf.__operators__.getitem_5/strided_slice/stack:output:09tf.__operators__.getitem_5/strided_slice/stack_1:output:09tf.__operators__.getitem_5/strided_slice/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask
.tf.__operators__.getitem_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ђ
0tf.__operators__.getitem_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ь
(tf.__operators__.getitem_4/strided_sliceStridedSliceproductionmill7tf.__operators__.getitem_4/strided_slice/stack:output:09tf.__operators__.getitem_4/strided_slice/stack_1:output:09tf.__operators__.getitem_4/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskВ
tf.stack_2/stackPack
ashcontentcolordampeningtimehoursdoughelasticityindexglutencontentmoisturepackageweightgproteinsg100gstarchcontent*
N	*
T0*'
_output_shapes
:         	*
axis         ~
normalization_2/subSubtf.stack_2/stack:output:0normalization_2_sub_y*
T0*'
_output_shapes
:         	]
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*
_output_shapes

:	^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ћ┐о3Ѕ
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:	і
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:         	«
-string_lookup_8/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_8_none_lookup_lookuptablefindv2_table_handle1tf.__operators__.getitem_4/strided_slice:output:0;string_lookup_8_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*'
_output_shapes
:         ј
string_lookup_8/IdentityIdentity6string_lookup_8/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         o
string_lookup_8/bincount/ShapeShape!string_lookup_8/Identity:output:0*
T0	*
_output_shapes
:h
string_lookup_8/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ў
string_lookup_8/bincount/ProdProd'string_lookup_8/bincount/Shape:output:0'string_lookup_8/bincount/Const:output:0*
T0*
_output_shapes
: d
"string_lookup_8/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : А
 string_lookup_8/bincount/GreaterGreater&string_lookup_8/bincount/Prod:output:0+string_lookup_8/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
string_lookup_8/bincount/CastCast$string_lookup_8/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: q
 string_lookup_8/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       њ
string_lookup_8/bincount/MaxMax!string_lookup_8/Identity:output:0)string_lookup_8/bincount/Const_1:output:0*
T0	*
_output_shapes
: `
string_lookup_8/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rќ
string_lookup_8/bincount/addAddV2%string_lookup_8/bincount/Max:output:0'string_lookup_8/bincount/add/y:output:0*
T0	*
_output_shapes
: Ѕ
string_lookup_8/bincount/mulMul!string_lookup_8/bincount/Cast:y:0 string_lookup_8/bincount/add:z:0*
T0	*
_output_shapes
: d
"string_lookup_8/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RЏ
 string_lookup_8/bincount/MaximumMaximum+string_lookup_8/bincount/minlength:output:0 string_lookup_8/bincount/mul:z:0*
T0	*
_output_shapes
: d
"string_lookup_8/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 RЪ
 string_lookup_8/bincount/MinimumMinimum+string_lookup_8/bincount/maxlength:output:0$string_lookup_8/bincount/Maximum:z:0*
T0	*
_output_shapes
: c
 string_lookup_8/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ■
&string_lookup_8/bincount/DenseBincountDenseBincount!string_lookup_8/Identity:output:0$string_lookup_8/bincount/Minimum:z:0)string_lookup_8/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(▒
.integer_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2;integer_lookup_2_none_lookup_lookuptablefindv2_table_handle1tf.__operators__.getitem_5/strided_slice:output:0<integer_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*'
_output_shapes
:         љ
integer_lookup_2/IdentityIdentity7integer_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*'
_output_shapes
:         q
integer_lookup_2/bincount/ShapeShape"integer_lookup_2/Identity:output:0*
T0	*
_output_shapes
:i
integer_lookup_2/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: Џ
integer_lookup_2/bincount/ProdProd(integer_lookup_2/bincount/Shape:output:0(integer_lookup_2/bincount/Const:output:0*
T0*
_output_shapes
: e
#integer_lookup_2/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ц
!integer_lookup_2/bincount/GreaterGreater'integer_lookup_2/bincount/Prod:output:0,integer_lookup_2/bincount/Greater/y:output:0*
T0*
_output_shapes
: }
integer_lookup_2/bincount/CastCast%integer_lookup_2/bincount/Greater:z:0*

DstT0	*

SrcT0
*
_output_shapes
: r
!integer_lookup_2/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ћ
integer_lookup_2/bincount/MaxMax"integer_lookup_2/Identity:output:0*integer_lookup_2/bincount/Const_1:output:0*
T0	*
_output_shapes
: a
integer_lookup_2/bincount/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RЎ
integer_lookup_2/bincount/addAddV2&integer_lookup_2/bincount/Max:output:0(integer_lookup_2/bincount/add/y:output:0*
T0	*
_output_shapes
: ї
integer_lookup_2/bincount/mulMul"integer_lookup_2/bincount/Cast:y:0!integer_lookup_2/bincount/add:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/minlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rъ
!integer_lookup_2/bincount/MaximumMaximum,integer_lookup_2/bincount/minlength:output:0!integer_lookup_2/bincount/mul:z:0*
T0	*
_output_shapes
: e
#integer_lookup_2/bincount/maxlengthConst*
_output_shapes
: *
dtype0	*
value	B	 Rб
!integer_lookup_2/bincount/MinimumMinimum,integer_lookup_2/bincount/maxlength:output:0%integer_lookup_2/bincount/Maximum:z:0*
T0	*
_output_shapes
: d
!integer_lookup_2/bincount/Const_2Const*
_output_shapes
: *
dtype0*
valueB ѓ
'integer_lookup_2/bincount/DenseBincountDenseBincount"integer_lookup_2/Identity:output:0%integer_lookup_2/bincount/Minimum:z:0*integer_lookup_2/bincount/Const_2:output:0*
T0*

Tidx0	*'
_output_shapes
:         *
binary_output(b
tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ч
tf.concat_2/concatConcatV2normalization_2/truediv:z:0/string_lookup_8/bincount/DenseBincount:output:00integer_lookup_2/bincount/DenseBincount:output:0 tf.concat_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         j
IdentityIdentitytf.concat_2/concat:output:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp/^integer_lookup_2/None_Lookup/LookupTableFindV2.^string_lookup_8/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*о
_input_shapes─
┴:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : 2`
.integer_lookup_2/None_Lookup/LookupTableFindV2.integer_lookup_2/None_Lookup/LookupTableFindV22^
-string_lookup_8/None_Lookup/LookupTableFindV2-string_lookup_8/None_Lookup/LookupTableFindV2:O K
#
_output_shapes
:         
$
_user_specified_name
Ashcontent:JF
#
_output_shapes
:         

_user_specified_nameColor:WS
#
_output_shapes
:         
,
_user_specified_nameDampeningTimehours:YU
#
_output_shapes
:         
.
_user_specified_nameDoughElasticityIndex:RN
#
_output_shapes
:         
'
_user_specified_nameGlutenContent:MI
#
_output_shapes
:         
"
_user_specified_name
Moisture:SO
#
_output_shapes
:         
(
_user_specified_namePackageWeightg:SO
#
_output_shapes
:         
(
_user_specified_nameProductionMill:UQ
#
_output_shapes
:         
*
_user_specified_nameProductionRecipe:R	N
#
_output_shapes
:         
'
_user_specified_nameProteinsg100g:R
N
#
_output_shapes
:         
'
_user_specified_nameStarchContent:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: 
┴
ћ
'__inference_dense_2_layer_call_fn_94618

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_93678o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
И
░
&__inference_simple_layer_call_fn_93945

ashcontent	
color
dampeningtimehours
doughelasticityindex
glutencontent
moisture
packageweightg
productionmill
productionrecipe	
proteinsg100g
starchcontent
unknown
	unknown_0
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:
identity

identity_1ѕбStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCall
ashcontentcolordampeningtimehoursdoughelasticityindexglutencontentmoisturepackageweightgproductionmillproductionrecipeproteinsg100gstarchcontentunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2			*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         :         *(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_simple_layer_call_and_return_conditional_losses_93875o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapesл
═:         :         :         :         :         :         :         :         :         :         :         :	:	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:         
$
_user_specified_name
Ashcontent:JF
#
_output_shapes
:         

_user_specified_nameColor:WS
#
_output_shapes
:         
,
_user_specified_nameDampeningTimehours:YU
#
_output_shapes
:         
.
_user_specified_nameDoughElasticityIndex:RN
#
_output_shapes
:         
'
_user_specified_nameGlutenContent:MI
#
_output_shapes
:         
"
_user_specified_name
Moisture:SO
#
_output_shapes
:         
(
_user_specified_namePackageWeightg:SO
#
_output_shapes
:         
(
_user_specified_nameProductionMill:UQ
#
_output_shapes
:         
*
_user_specified_nameProductionRecipe:R	N
#
_output_shapes
:         
'
_user_specified_nameProteinsg100g:R
N
#
_output_shapes
:         
'
_user_specified_nameStarchContent:$ 

_output_shapes

:	:$ 

_output_shapes

:	:

_output_shapes
: :

_output_shapes
: "┐L
saver_filename:0StatefulPartitionedCall_3:0StatefulPartitionedCall_48"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*х
serving_defaultА
=

Ashcontent/
serving_default_Ashcontent:0         
3
Color*
serving_default_Color:0         
M
DampeningTimehours7
$serving_default_DampeningTimehours:0         
Q
DoughElasticityIndex9
&serving_default_DoughElasticityIndex:0         
C
GlutenContent2
serving_default_GlutenContent:0         
9
Moisture-
serving_default_Moisture:0         
E
PackageWeightg3
 serving_default_PackageWeightg:0         
E
ProductionMill3
 serving_default_ProductionMill:0         
I
ProductionRecipe5
"serving_default_ProductionRecipe:0	         
C
Proteinsg100g2
serving_default_Proteinsg100g:0         
C
StarchContent2
serving_default_StarchContent:0         D
low_vs_avghigh2
StatefulPartitionedCall_2:0         D
lowavg_vs_high2
StatefulPartitionedCall_2:1         tensorflow/serving/predict:Ѓл
Ю
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-0
layer-11
layer_with_weights-1
layer-12
layer_with_weights-2
layer-13
layer_with_weights-3
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
6
_init_input_shape"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
▒
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6

layer-7
layer-8
layer-9
layer-10
layer-11
layer-12
layer-13
 layer-14
!layer-15
"layer-16
#layer-17
layer-18
	layer-19
$layer-20
%layer-21
&layer-22
'layer_with_weights-0
'layer-23
(layer-24
)layer-25
*layer-26
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_network
╗
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias"
_tf_keras_layer
╗
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias"
_tf_keras_layer
╗
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias"
_tf_keras_layer
_
I0
J1
K2
73
84
?5
@6
G7
H8"
trackable_list_wrapper
J
70
81
?2
@3
G4
H5"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╬
Qtrace_0
Rtrace_1
Strace_2
Ttrace_32с
&__inference_simple_layer_call_fn_93749
&__inference_simple_layer_call_fn_94121
&__inference_simple_layer_call_fn_94162
&__inference_simple_layer_call_fn_93945└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 zQtrace_0zRtrace_1zStrace_2zTtrace_3
║
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_32¤
A__inference_simple_layer_call_and_return_conditional_losses_94260
A__inference_simple_layer_call_and_return_conditional_losses_94358
A__inference_simple_layer_call_and_return_conditional_losses_93988
A__inference_simple_layer_call_and_return_conditional_losses_94031└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 zUtrace_0zVtrace_1zWtrace_2zXtrace_3
УBт
 __inference__wrapped_model_93213
AshcontentColorDampeningTimehoursDoughElasticityIndexGlutenContentMoisturePackageWeightgProductionMillProductionRecipeProteinsg100gStarchContent"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╦
Yiter

Zbeta_1

[beta_2
	\decay
]learning_rate7m─8m┼?mк@mКGm╚Hm╔7v╩8v╦?v╠@v═Gv╬Hv¤"
	optimizer
 "
trackable_dict_wrapper
,
^serving_default"
signature_map
 "
trackable_list_wrapper
(
_	keras_api"
_tf_keras_layer
(
`	keras_api"
_tf_keras_layer
(
a	keras_api"
_tf_keras_layer
(
b	keras_api"
_tf_keras_layer
(
c	keras_api"
_tf_keras_layer
(
d	keras_api"
_tf_keras_layer
(
e	keras_api"
_tf_keras_layer
(
f	keras_api"
_tf_keras_layer
(
g	keras_api"
_tf_keras_layer
(
h	keras_api"
_tf_keras_layer
(
i	keras_api"
_tf_keras_layer
(
j	keras_api"
_tf_keras_layer
М
k	keras_api
l
_keep_axis
m_reduce_axis
n_reduce_axis_mask
o_broadcast_shape
Imean
I
adapt_mean
Jvariance
Jadapt_variance
	Kcount
p_adapt_function"
_tf_keras_layer
P
q	keras_api
rinput_vocabulary
slookup_table"
_tf_keras_layer
P
t	keras_api
uinput_vocabulary
vlookup_table"
_tf_keras_layer
(
w	keras_api"
_tf_keras_layer
5
I0
J1
K2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
н
}trace_0
~trace_1
trace_2
ђtrace_32у
'__inference_model_2_layer_call_fn_93318
'__inference_model_2_layer_call_fn_94430
'__inference_model_2_layer_call_fn_94457
'__inference_model_2_layer_call_fn_93475└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 z}trace_0z~trace_1ztrace_2zђtrace_3
к
Ђtrace_0
ѓtrace_1
Ѓtrace_2
ёtrace_32М
B__inference_model_2_layer_call_and_return_conditional_losses_94533
B__inference_model_2_layer_call_and_return_conditional_losses_94609
B__inference_model_2_layer_call_and_return_conditional_losses_93551
B__inference_model_2_layer_call_and_return_conditional_losses_93627└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 zЂtrace_0zѓtrace_1zЃtrace_2zёtrace_3
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ёnon_trainable_variables
єlayers
Єmetrics
 ѕlayer_regularization_losses
Ѕlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
ь
іtrace_02╬
'__inference_dense_2_layer_call_fn_94618б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zіtrace_0
ѕ
Іtrace_02ж
B__inference_dense_2_layer_call_and_return_conditional_losses_94629б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zІtrace_0
 :2dense_2/kernel
:2dense_2/bias
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
їnon_trainable_variables
Їlayers
јmetrics
 Јlayer_regularization_losses
љlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
З
Љtrace_02Н
.__inference_low_vs_avghigh_layer_call_fn_94638б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЉtrace_0
Ј
њtrace_02­
I__inference_low_vs_avghigh_layer_call_and_return_conditional_losses_94649б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zњtrace_0
':%2low_vs_avghigh/kernel
!:2low_vs_avghigh/bias
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Њnon_trainable_variables
ћlayers
Ћmetrics
 ќlayer_regularization_losses
Ќlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
З
ўtrace_02Н
.__inference_lowavg_vs_high_layer_call_fn_94658б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zўtrace_0
Ј
Ўtrace_02­
I__inference_lowavg_vs_high_layer_call_and_return_conditional_losses_94669б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЎtrace_0
':%2lowavg_vs_high/kernel
!:2lowavg_vs_high/bias
:	2mean
:	2variance
:	 2count
5
I0
J1
K2"
trackable_list_wrapper
ј
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
H
џ0
Џ1
ю2
Ю3
ъ4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ќBЊ
&__inference_simple_layer_call_fn_93749
AshcontentColorDampeningTimehoursDoughElasticityIndexGlutenContentMoisturePackageWeightgProductionMillProductionRecipeProteinsg100gStarchContent"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
єBЃ
&__inference_simple_layer_call_fn_94121inputs/Ash content (%)inputs/Colorinputs/Dampening Time (hours)inputs/Dough Elasticity Indexinputs/Gluten Content (%)inputs/Moisture (%)inputs/Package Weight (g)inputs/Production Millinputs/Production Recipeinputs/Proteins (g)/100ginputs/Starch Content (%)"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
єBЃ
&__inference_simple_layer_call_fn_94162inputs/Ash content (%)inputs/Colorinputs/Dampening Time (hours)inputs/Dough Elasticity Indexinputs/Gluten Content (%)inputs/Moisture (%)inputs/Package Weight (g)inputs/Production Millinputs/Production Recipeinputs/Proteins (g)/100ginputs/Starch Content (%)"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ќBЊ
&__inference_simple_layer_call_fn_93945
AshcontentColorDampeningTimehoursDoughElasticityIndexGlutenContentMoisturePackageWeightgProductionMillProductionRecipeProteinsg100gStarchContent"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
АBъ
A__inference_simple_layer_call_and_return_conditional_losses_94260inputs/Ash content (%)inputs/Colorinputs/Dampening Time (hours)inputs/Dough Elasticity Indexinputs/Gluten Content (%)inputs/Moisture (%)inputs/Package Weight (g)inputs/Production Millinputs/Production Recipeinputs/Proteins (g)/100ginputs/Starch Content (%)"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
АBъ
A__inference_simple_layer_call_and_return_conditional_losses_94358inputs/Ash content (%)inputs/Colorinputs/Dampening Time (hours)inputs/Dough Elasticity Indexinputs/Gluten Content (%)inputs/Moisture (%)inputs/Package Weight (g)inputs/Production Millinputs/Production Recipeinputs/Proteins (g)/100ginputs/Starch Content (%)"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▒B«
A__inference_simple_layer_call_and_return_conditional_losses_93988
AshcontentColorDampeningTimehoursDoughElasticityIndexGlutenContentMoisturePackageWeightgProductionMillProductionRecipeProteinsg100gStarchContent"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▒B«
A__inference_simple_layer_call_and_return_conditional_losses_94031
AshcontentColorDampeningTimehoursDoughElasticityIndexGlutenContentMoisturePackageWeightgProductionMillProductionRecipeProteinsg100gStarchContent"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
тBР
#__inference_signature_wrapper_94080
AshcontentColorDampeningTimehoursDoughElasticityIndexGlutenContentMoisturePackageWeightgProductionMillProductionRecipeProteinsg100gStarchContent"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
┌
Ъtrace_02╗
__inference_adapt_step_94403џ
Њ▓Ј
FullArgSpec
argsџ

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЪtrace_0
"
_generic_user_object
 "
trackable_list_wrapper
j
а_initializer
А_create_resource
б_initialize
Б_destroy_resourceR jtf.StaticHashTable
"
_generic_user_object
 "
trackable_list_wrapper
j
ц_initializer
Ц_create_resource
д_initialize
Д_destroy_resourceR jtf.StaticHashTable
"
_generic_user_object
5
I0
J1
K2"
trackable_list_wrapper
Ь
0
1
2
3
4
5
6

7
8
9
10
11
12
13
 14
!15
"16
#17
18
	19
$20
%21
&22
'23
(24
)25
*26"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЌBћ
'__inference_model_2_layer_call_fn_93318
AshcontentColorDampeningTimehoursDoughElasticityIndexGlutenContentMoisturePackageWeightgProductionMillProductionRecipeProteinsg100gStarchContent"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЄBё
'__inference_model_2_layer_call_fn_94430inputs/Ash content (%)inputs/Colorinputs/Dampening Time (hours)inputs/Dough Elasticity Indexinputs/Gluten Content (%)inputs/Moisture (%)inputs/Package Weight (g)inputs/Production Millinputs/Production Recipeinputs/Proteins (g)/100ginputs/Starch Content (%)"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЄBё
'__inference_model_2_layer_call_fn_94457inputs/Ash content (%)inputs/Colorinputs/Dampening Time (hours)inputs/Dough Elasticity Indexinputs/Gluten Content (%)inputs/Moisture (%)inputs/Package Weight (g)inputs/Production Millinputs/Production Recipeinputs/Proteins (g)/100ginputs/Starch Content (%)"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЌBћ
'__inference_model_2_layer_call_fn_93475
AshcontentColorDampeningTimehoursDoughElasticityIndexGlutenContentMoisturePackageWeightgProductionMillProductionRecipeProteinsg100gStarchContent"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
бBЪ
B__inference_model_2_layer_call_and_return_conditional_losses_94533inputs/Ash content (%)inputs/Colorinputs/Dampening Time (hours)inputs/Dough Elasticity Indexinputs/Gluten Content (%)inputs/Moisture (%)inputs/Package Weight (g)inputs/Production Millinputs/Production Recipeinputs/Proteins (g)/100ginputs/Starch Content (%)"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
бBЪ
B__inference_model_2_layer_call_and_return_conditional_losses_94609inputs/Ash content (%)inputs/Colorinputs/Dampening Time (hours)inputs/Dough Elasticity Indexinputs/Gluten Content (%)inputs/Moisture (%)inputs/Package Weight (g)inputs/Production Millinputs/Production Recipeinputs/Proteins (g)/100ginputs/Starch Content (%)"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▓B»
B__inference_model_2_layer_call_and_return_conditional_losses_93551
AshcontentColorDampeningTimehoursDoughElasticityIndexGlutenContentMoisturePackageWeightgProductionMillProductionRecipeProteinsg100gStarchContent"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▓B»
B__inference_model_2_layer_call_and_return_conditional_losses_93627
AshcontentColorDampeningTimehoursDoughElasticityIndexGlutenContentMoisturePackageWeightgProductionMillProductionRecipeProteinsg100gStarchContent"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
█Bп
'__inference_dense_2_layer_call_fn_94618inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
B__inference_dense_2_layer_call_and_return_conditional_losses_94629inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
РB▀
.__inference_low_vs_avghigh_layer_call_fn_94638inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
§BЩ
I__inference_low_vs_avghigh_layer_call_and_return_conditional_losses_94649inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
РB▀
.__inference_lowavg_vs_high_layer_call_fn_94658inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
§BЩ
I__inference_lowavg_vs_high_layer_call_and_return_conditional_losses_94669inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
е	variables
Е	keras_api

фtotal

Фcount"
_tf_keras_metric
R
г	variables
Г	keras_api

«total

»count"
_tf_keras_metric
R
░	variables
▒	keras_api

▓total

│count"
_tf_keras_metric
c
┤	variables
х	keras_api

Хtotal

иcount
И
_fn_kwargs"
_tf_keras_metric
c
╣	variables
║	keras_api

╗total

╝count
й
_fn_kwargs"
_tf_keras_metric
╩BК
__inference_adapt_step_94403iterator"џ
Њ▓Ј
FullArgSpec
argsџ

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
"
_generic_user_object
═
Йtrace_02«
__inference__creator_94674Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б zЙtrace_0
Л
┐trace_02▓
__inference__initializer_94682Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б z┐trace_0
¤
└trace_02░
__inference__destroyer_94687Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б z└trace_0
"
_generic_user_object
═
┴trace_02«
__inference__creator_94692Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б z┴trace_0
Л
┬trace_02▓
__inference__initializer_94700Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б z┬trace_0
¤
├trace_02░
__inference__destroyer_94705Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б z├trace_0
0
ф0
Ф1"
trackable_list_wrapper
.
е	variables"
_generic_user_object
:  (2total
:  (2count
0
«0
»1"
trackable_list_wrapper
.
г	variables"
_generic_user_object
:  (2total
:  (2count
0
▓0
│1"
trackable_list_wrapper
.
░	variables"
_generic_user_object
:  (2total
:  (2count
0
Х0
и1"
trackable_list_wrapper
.
┤	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
╗0
╝1"
trackable_list_wrapper
.
╣	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
▒B«
__inference__creator_94674"Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
хB▓
__inference__initializer_94682"Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
│B░
__inference__destroyer_94687"Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
▒B«
__inference__creator_94692"Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
хB▓
__inference__initializer_94700"Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
│B░
__inference__destroyer_94705"Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
%:#2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
,:*2Adam/low_vs_avghigh/kernel/m
&:$2Adam/low_vs_avghigh/bias/m
,:*2Adam/lowavg_vs_high/kernel/m
&:$2Adam/lowavg_vs_high/bias/m
%:#2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
,:*2Adam/low_vs_avghigh/kernel/v
&:$2Adam/low_vs_avghigh/bias/v
,:*2Adam/lowavg_vs_high/kernel/v
&:$2Adam/lowavg_vs_high/bias/v
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_5jtf.TrackableConstant
!J	
Const_6jtf.TrackableConstant
!J	
Const_7jtf.TrackableConstant6
__inference__creator_94674б

б 
ф "і 6
__inference__creator_94692б

б 
ф "і 8
__inference__destroyer_94687б

б 
ф "і 8
__inference__destroyer_94705б

б 
ф "і A
__inference__initializer_94682sнНб

б 
ф "і A
__inference__initializer_94700vоОб

б 
ф "і ┼
 __inference__wrapped_model_93213алЛsмvМ78GH?@јбі
ѓб■
чфэ
3
Ash content (%) і

Ashcontent         
$
Colorі
Color         
B
Dampening Time (hours)(і%
DampeningTimehours         
D
Dough Elasticity Index*і'
DoughElasticityIndex         
9
Gluten Content (%)#і 
GlutenContent         
.
Moisture (%)і
Moisture         
:
Package Weight (g)$і!
PackageWeightg         
7
Production Mill$і!
ProductionMill         
;
Production Recipe&і#
ProductionRecipe         	
8
Proteins (g)/100g#і 
Proteinsg100g         
9
Starch Content (%)#і 
StarchContent         
ф "{фx
:
low_vs_avghigh(і%
low_vs_avghigh         
:
lowavg_vs_high(і%
lowavg_vs_high         n
__inference_adapt_step_94403NKIJCб@
9б6
4њ1б
і         	IteratorSpec 
ф "
 б
B__inference_dense_2_layer_call_and_return_conditional_losses_94629\78/б,
%б"
 і
inputs         
ф "%б"
і
0         
џ z
'__inference_dense_2_layer_call_fn_94618O78/б,
%б"
 і
inputs         
ф "і         Е
I__inference_low_vs_avghigh_layer_call_and_return_conditional_losses_94649\?@/б,
%б"
 і
inputs         
ф "%б"
і
0         
џ Ђ
.__inference_low_vs_avghigh_layer_call_fn_94638O?@/б,
%б"
 і
inputs         
ф "і         Е
I__inference_lowavg_vs_high_layer_call_and_return_conditional_losses_94669\GH/б,
%б"
 і
inputs         
ф "%б"
і
0         
џ Ђ
.__inference_lowavg_vs_high_layer_call_fn_94658OGH/б,
%б"
 і
inputs         
ф "і         Њ
B__inference_model_2_layer_call_and_return_conditional_losses_93551╠
лЛsмvМќбњ
ібє
чфэ
3
Ash content (%) і

Ashcontent         
$
Colorі
Color         
B
Dampening Time (hours)(і%
DampeningTimehours         
D
Dough Elasticity Index*і'
DoughElasticityIndex         
9
Gluten Content (%)#і 
GlutenContent         
.
Moisture (%)і
Moisture         
:
Package Weight (g)$і!
PackageWeightg         
7
Production Mill$і!
ProductionMill         
;
Production Recipe&і#
ProductionRecipe         	
8
Proteins (g)/100g#і 
Proteinsg100g         
9
Starch Content (%)#і 
StarchContent         
p 

 
ф "%б"
і
0         
џ Њ
B__inference_model_2_layer_call_and_return_conditional_losses_93627╠
лЛsмvМќбњ
ібє
чфэ
3
Ash content (%) і

Ashcontent         
$
Colorі
Color         
B
Dampening Time (hours)(і%
DampeningTimehours         
D
Dough Elasticity Index*і'
DoughElasticityIndex         
9
Gluten Content (%)#і 
GlutenContent         
.
Moisture (%)і
Moisture         
:
Package Weight (g)$і!
PackageWeightg         
7
Production Mill$і!
ProductionMill         
;
Production Recipe&і#
ProductionRecipe         	
8
Proteins (g)/100g#і 
Proteinsg100g         
9
Starch Content (%)#і 
StarchContent         
p

 
ф "%б"
і
0         
џ Ѓ
B__inference_model_2_layer_call_and_return_conditional_losses_94533╝
лЛsмvМєбѓ
ЩбШ
вфу
?
Ash content (%),і)
inputs/Ash content (%)         
+
Color"і
inputs/Color         
M
Dampening Time (hours)3і0
inputs/Dampening Time (hours)         
M
Dough Elasticity Index3і0
inputs/Dough Elasticity Index         
E
Gluten Content (%)/і,
inputs/Gluten Content (%)         
9
Moisture (%))і&
inputs/Moisture (%)         
E
Package Weight (g)/і,
inputs/Package Weight (g)         
?
Production Mill,і)
inputs/Production Mill         
C
Production Recipe.і+
inputs/Production Recipe         	
C
Proteins (g)/100g.і+
inputs/Proteins (g)/100g         
E
Starch Content (%)/і,
inputs/Starch Content (%)         
p 

 
ф "%б"
і
0         
џ Ѓ
B__inference_model_2_layer_call_and_return_conditional_losses_94609╝
лЛsмvМєбѓ
ЩбШ
вфу
?
Ash content (%),і)
inputs/Ash content (%)         
+
Color"і
inputs/Color         
M
Dampening Time (hours)3і0
inputs/Dampening Time (hours)         
M
Dough Elasticity Index3і0
inputs/Dough Elasticity Index         
E
Gluten Content (%)/і,
inputs/Gluten Content (%)         
9
Moisture (%))і&
inputs/Moisture (%)         
E
Package Weight (g)/і,
inputs/Package Weight (g)         
?
Production Mill,і)
inputs/Production Mill         
C
Production Recipe.і+
inputs/Production Recipe         	
C
Proteins (g)/100g.і+
inputs/Proteins (g)/100g         
E
Starch Content (%)/і,
inputs/Starch Content (%)         
p

 
ф "%б"
і
0         
џ в
'__inference_model_2_layer_call_fn_93318┐
лЛsмvМќбњ
ібє
чфэ
3
Ash content (%) і

Ashcontent         
$
Colorі
Color         
B
Dampening Time (hours)(і%
DampeningTimehours         
D
Dough Elasticity Index*і'
DoughElasticityIndex         
9
Gluten Content (%)#і 
GlutenContent         
.
Moisture (%)і
Moisture         
:
Package Weight (g)$і!
PackageWeightg         
7
Production Mill$і!
ProductionMill         
;
Production Recipe&і#
ProductionRecipe         	
8
Proteins (g)/100g#і 
Proteinsg100g         
9
Starch Content (%)#і 
StarchContent         
p 

 
ф "і         в
'__inference_model_2_layer_call_fn_93475┐
лЛsмvМќбњ
ібє
чфэ
3
Ash content (%) і

Ashcontent         
$
Colorі
Color         
B
Dampening Time (hours)(і%
DampeningTimehours         
D
Dough Elasticity Index*і'
DoughElasticityIndex         
9
Gluten Content (%)#і 
GlutenContent         
.
Moisture (%)і
Moisture         
:
Package Weight (g)$і!
PackageWeightg         
7
Production Mill$і!
ProductionMill         
;
Production Recipe&і#
ProductionRecipe         	
8
Proteins (g)/100g#і 
Proteinsg100g         
9
Starch Content (%)#і 
StarchContent         
p

 
ф "і         █
'__inference_model_2_layer_call_fn_94430»
лЛsмvМєбѓ
ЩбШ
вфу
?
Ash content (%),і)
inputs/Ash content (%)         
+
Color"і
inputs/Color         
M
Dampening Time (hours)3і0
inputs/Dampening Time (hours)         
M
Dough Elasticity Index3і0
inputs/Dough Elasticity Index         
E
Gluten Content (%)/і,
inputs/Gluten Content (%)         
9
Moisture (%))і&
inputs/Moisture (%)         
E
Package Weight (g)/і,
inputs/Package Weight (g)         
?
Production Mill,і)
inputs/Production Mill         
C
Production Recipe.і+
inputs/Production Recipe         	
C
Proteins (g)/100g.і+
inputs/Proteins (g)/100g         
E
Starch Content (%)/і,
inputs/Starch Content (%)         
p 

 
ф "і         █
'__inference_model_2_layer_call_fn_94457»
лЛsмvМєбѓ
ЩбШ
вфу
?
Ash content (%),і)
inputs/Ash content (%)         
+
Color"і
inputs/Color         
M
Dampening Time (hours)3і0
inputs/Dampening Time (hours)         
M
Dough Elasticity Index3і0
inputs/Dough Elasticity Index         
E
Gluten Content (%)/і,
inputs/Gluten Content (%)         
9
Moisture (%))і&
inputs/Moisture (%)         
E
Package Weight (g)/і,
inputs/Package Weight (g)         
?
Production Mill,і)
inputs/Production Mill         
C
Production Recipe.і+
inputs/Production Recipe         	
C
Proteins (g)/100g.і+
inputs/Proteins (g)/100g         
E
Starch Content (%)/і,
inputs/Starch Content (%)         
p

 
ф "і         ъ
#__inference_signature_wrapper_94080ШлЛsмvМ78GH?@СбЯ
б 
пфн
.

Ashcontent і

Ashcontent         
$
Colorі
Color         
>
DampeningTimehours(і%
DampeningTimehours         
B
DoughElasticityIndex*і'
DoughElasticityIndex         
4
GlutenContent#і 
GlutenContent         
*
Moistureі
Moisture         
6
PackageWeightg$і!
PackageWeightg         
6
ProductionMill$і!
ProductionMill         
:
ProductionRecipe&і#
ProductionRecipe         	
4
Proteinsg100g#і 
Proteinsg100g         
4
StarchContent#і 
StarchContent         "{фx
:
low_vs_avghigh(і%
low_vs_avghigh         
:
lowavg_vs_high(і%
lowavg_vs_high         Й
A__inference_simple_layer_call_and_return_conditional_losses_93988ЭлЛsмvМ78GH?@ќбњ
ібє
чфэ
3
Ash content (%) і

Ashcontent         
$
Colorі
Color         
B
Dampening Time (hours)(і%
DampeningTimehours         
D
Dough Elasticity Index*і'
DoughElasticityIndex         
9
Gluten Content (%)#і 
GlutenContent         
.
Moisture (%)і
Moisture         
:
Package Weight (g)$і!
PackageWeightg         
7
Production Mill$і!
ProductionMill         
;
Production Recipe&і#
ProductionRecipe         	
8
Proteins (g)/100g#і 
Proteinsg100g         
9
Starch Content (%)#і 
StarchContent         
p 

 
ф "KбH
Aџ>
і
0/0         
і
0/1         
џ Й
A__inference_simple_layer_call_and_return_conditional_losses_94031ЭлЛsмvМ78GH?@ќбњ
ібє
чфэ
3
Ash content (%) і

Ashcontent         
$
Colorі
Color         
B
Dampening Time (hours)(і%
DampeningTimehours         
D
Dough Elasticity Index*і'
DoughElasticityIndex         
9
Gluten Content (%)#і 
GlutenContent         
.
Moisture (%)і
Moisture         
:
Package Weight (g)$і!
PackageWeightg         
7
Production Mill$і!
ProductionMill         
;
Production Recipe&і#
ProductionRecipe         	
8
Proteins (g)/100g#і 
Proteinsg100g         
9
Starch Content (%)#і 
StarchContent         
p

 
ф "KбH
Aџ>
і
0/0         
і
0/1         
џ «
A__inference_simple_layer_call_and_return_conditional_losses_94260УлЛsмvМ78GH?@єбѓ
ЩбШ
вфу
?
Ash content (%),і)
inputs/Ash content (%)         
+
Color"і
inputs/Color         
M
Dampening Time (hours)3і0
inputs/Dampening Time (hours)         
M
Dough Elasticity Index3і0
inputs/Dough Elasticity Index         
E
Gluten Content (%)/і,
inputs/Gluten Content (%)         
9
Moisture (%))і&
inputs/Moisture (%)         
E
Package Weight (g)/і,
inputs/Package Weight (g)         
?
Production Mill,і)
inputs/Production Mill         
C
Production Recipe.і+
inputs/Production Recipe         	
C
Proteins (g)/100g.і+
inputs/Proteins (g)/100g         
E
Starch Content (%)/і,
inputs/Starch Content (%)         
p 

 
ф "KбH
Aџ>
і
0/0         
і
0/1         
џ «
A__inference_simple_layer_call_and_return_conditional_losses_94358УлЛsмvМ78GH?@єбѓ
ЩбШ
вфу
?
Ash content (%),і)
inputs/Ash content (%)         
+
Color"і
inputs/Color         
M
Dampening Time (hours)3і0
inputs/Dampening Time (hours)         
M
Dough Elasticity Index3і0
inputs/Dough Elasticity Index         
E
Gluten Content (%)/і,
inputs/Gluten Content (%)         
9
Moisture (%))і&
inputs/Moisture (%)         
E
Package Weight (g)/і,
inputs/Package Weight (g)         
?
Production Mill,і)
inputs/Production Mill         
C
Production Recipe.і+
inputs/Production Recipe         	
C
Proteins (g)/100g.і+
inputs/Proteins (g)/100g         
E
Starch Content (%)/і,
inputs/Starch Content (%)         
p

 
ф "KбH
Aџ>
і
0/0         
і
0/1         
џ Ћ
&__inference_simple_layer_call_fn_93749ЖлЛsмvМ78GH?@ќбњ
ібє
чфэ
3
Ash content (%) і

Ashcontent         
$
Colorі
Color         
B
Dampening Time (hours)(і%
DampeningTimehours         
D
Dough Elasticity Index*і'
DoughElasticityIndex         
9
Gluten Content (%)#і 
GlutenContent         
.
Moisture (%)і
Moisture         
:
Package Weight (g)$і!
PackageWeightg         
7
Production Mill$і!
ProductionMill         
;
Production Recipe&і#
ProductionRecipe         	
8
Proteins (g)/100g#і 
Proteinsg100g         
9
Starch Content (%)#і 
StarchContent         
p 

 
ф "=џ:
і
0         
і
1         Ћ
&__inference_simple_layer_call_fn_93945ЖлЛsмvМ78GH?@ќбњ
ібє
чфэ
3
Ash content (%) і

Ashcontent         
$
Colorі
Color         
B
Dampening Time (hours)(і%
DampeningTimehours         
D
Dough Elasticity Index*і'
DoughElasticityIndex         
9
Gluten Content (%)#і 
GlutenContent         
.
Moisture (%)і
Moisture         
:
Package Weight (g)$і!
PackageWeightg         
7
Production Mill$і!
ProductionMill         
;
Production Recipe&і#
ProductionRecipe         	
8
Proteins (g)/100g#і 
Proteinsg100g         
9
Starch Content (%)#і 
StarchContent         
p

 
ф "=џ:
і
0         
і
1         Ё
&__inference_simple_layer_call_fn_94121┌лЛsмvМ78GH?@єбѓ
ЩбШ
вфу
?
Ash content (%),і)
inputs/Ash content (%)         
+
Color"і
inputs/Color         
M
Dampening Time (hours)3і0
inputs/Dampening Time (hours)         
M
Dough Elasticity Index3і0
inputs/Dough Elasticity Index         
E
Gluten Content (%)/і,
inputs/Gluten Content (%)         
9
Moisture (%))і&
inputs/Moisture (%)         
E
Package Weight (g)/і,
inputs/Package Weight (g)         
?
Production Mill,і)
inputs/Production Mill         
C
Production Recipe.і+
inputs/Production Recipe         	
C
Proteins (g)/100g.і+
inputs/Proteins (g)/100g         
E
Starch Content (%)/і,
inputs/Starch Content (%)         
p 

 
ф "=џ:
і
0         
і
1         Ё
&__inference_simple_layer_call_fn_94162┌лЛsмvМ78GH?@єбѓ
ЩбШ
вфу
?
Ash content (%),і)
inputs/Ash content (%)         
+
Color"і
inputs/Color         
M
Dampening Time (hours)3і0
inputs/Dampening Time (hours)         
M
Dough Elasticity Index3і0
inputs/Dough Elasticity Index         
E
Gluten Content (%)/і,
inputs/Gluten Content (%)         
9
Moisture (%))і&
inputs/Moisture (%)         
E
Package Weight (g)/і,
inputs/Package Weight (g)         
?
Production Mill,і)
inputs/Production Mill         
C
Production Recipe.і+
inputs/Production Recipe         	
C
Proteins (g)/100g.і+
inputs/Proteins (g)/100g         
E
Starch Content (%)/і,
inputs/Starch Content (%)         
p

 
ф "=џ:
і
0         
і
1         