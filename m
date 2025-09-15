Return-Path: <ashish.shrikhande@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86BC6CAC592
	for <webhook@archiver.kernel.org>; Mon, 15 Sep 2025 16:38:46 +0000 (UTC)
Subject: Re: [yocto] do_package error after building meta-tensorflow and libcamera-apps does not detect tensorflow-lite
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "ashish shrikhande6" <ashish.shrikhande@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (49.205.201.146)
X-Originating-Platform: Linux Firefox 142
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 15 Sep 2025 09:38:46 -0700
References: <0990cea5-1a65-4c61-a627-cd1b7f9875b9@gmail.com>
In-Reply-To: <0990cea5-1a65-4c61-a627-cd1b7f9875b9@gmail.com>
Message-ID: <11853.1757954326050371090@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hYWUh2UVPAwhLMWasJJD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Sep 2025 16:38:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65838

--hYWUh2UVPAwhLMWasJJD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After Integrating tflite with libcamera I am getting some compilation error=
s:
1.
| In file included from ../sources/libcamera-apps-1.9.0+git/post_processing=
_stages/tf_stage.cpp:7:
| ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tf_stage.hpp:1=
6:10: fatal error: tensorflow/lite/builtin_op_data.h: No such file or direc=
tory
| =C2=A0 =C2=A016 | #include "tensorflow/lite/builtin_op_data.h"
| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~
| compilation terminated.

2.

| In file included from ../sources/libcamera-apps-1.9.0+git/post_processing=
_stages/tensorflow/lite/schema/schema_generated.h:18,
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../sou=
rces/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/a=
pi/op_resolver.h:29,
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../sou=
rces/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/s=
ubgraph.h:36,
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../sou=
rces/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/a=
sync/async_subgraph.h:27,
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../sou=
rces/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/a=
sync/async_signature_runner.h:24,
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../sou=
rces/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/i=
nterpreter.h:48,
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../sou=
rces/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/interp=
reter.h:21,
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../sou=
rces/libcamera-apps-1.9.0+git/post_processing_stages/tf_stage.hpp:18,
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../sou=
rces/libcamera-apps-1.9.0+git/post_processing_stages/object_classify_tf_sta=
ge.cpp:8:
| ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/com=
piler/mlir/lite/schema/schema_generated.h:21:10: fatal error: flatbuffers/f=
latbuffers.h: No such file or directory
| =C2=A0 =C2=A021 | #include "flatbuffers/flatbuffers.h"
| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~=
~~~~~~~~~~~
| compilation terminated.

3.

| In file included from ../sources/libcamera-apps-1.9.0+git/post_processing=
_stages/segmentation_tf_stage.cpp:8:
| ../sources/libcamera-apps-1.9.0+git/post_processing_stages/segmentation.h=
pp:15:82: error: 'uint8_t' was not declared in this scope
| =C2=A0 =C2=A015 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 Segmentation(int w, int h, =
std::vector<std::string> l, const std::vector<uint8_t> &s)
| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0^~~~~~~
| ../sources/libcamera-apps-1.9.0+git/post_processing_stages/segmentation.h=
pp:12:1: note: 'uint8_t' is defined in header '<cstdint>'; this is probably=
 fixable by adding '#include <cstdint>'

4.

| In file included from ../sources/libcamera-apps-1.9.0+git/post_processing=
_stages/tensorflow/lite/core/c/builtin_op_data.h:24,
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../sou=
rces/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/builti=
n_op_data.h:20,
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../sou=
rces/libcamera-apps-1.9.0+git/post_processing_stages/tf_stage.hpp:16,
| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from ../sou=
rces/libcamera-apps-1.9.0+git/post_processing_stages/object_detect_tf_stage=
.cpp:9:
| ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lit=
e/core/c/common.h:125:7: error: ISO C++ forbids flexible array member 'data=
' [-Werror=3Dpedantic]
| =C2=A0 125 | =C2=A0 int data[];
| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 ^~~~
| ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lit=
e/core/c/common.h:169:9: error: ISO C++ forbids flexible array member 'data=
' [-Werror=3Dpedantic]
| =C2=A0 169 | =C2=A0 float data[];
| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~
| cc1plus: all warnings being treated as errors

--hYWUh2UVPAwhLMWasJJD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>After Integrating tflite with libcamera I am getting some compilation =
errors:</div>
<div>1.&nbsp;</div>
<div>| In file included from ../sources/libcamera-apps-1.9.0+git/post_proce=
ssing_stages/tf_stage.cpp:7:<br />| ../sources/libcamera-apps-1.9.0+git/pos=
t_processing_stages/tf_stage.hpp:16:10: fatal error: tensorflow/lite/builti=
n_op_data.h: No such file or directory<br />| &nbsp; &nbsp;16 | #include "t=
ensorflow/lite/builtin_op_data.h"<br />| &nbsp; &nbsp; &nbsp; | &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br />| compilati=
on terminated.</div>
<div>&nbsp;</div>
<div>2.&nbsp;</div>
<div>&nbsp;</div>
<div>| In file included from ../sources/libcamera-apps-1.9.0+git/post_proce=
ssing_stages/tensorflow/lite/schema/schema_generated.h:18,<br />| &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ../sources/libcam=
era-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/api/op_resol=
ver.h:29,<br />| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;from ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorf=
low/lite/core/subgraph.h:36,<br />| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;from ../sources/libcamera-apps-1.9.0+git/post_proces=
sing_stages/tensorflow/lite/core/async/async_subgraph.h:27,<br />| &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ../sources/libca=
mera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/async/async=
_signature_runner.h:24,<br />| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;from ../sources/libcamera-apps-1.9.0+git/post_processing_=
stages/tensorflow/lite/core/interpreter.h:48,<br />| &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ../sources/libcamera-apps-1.9.=
0+git/post_processing_stages/tensorflow/lite/interpreter.h:21,<br />| &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ../sources/li=
bcamera-apps-1.9.0+git/post_processing_stages/tf_stage.hpp:18,<br />| &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ../sources/li=
bcamera-apps-1.9.0+git/post_processing_stages/object_classify_tf_stage.cpp:=
8:<br />| ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensor=
flow/compiler/mlir/lite/schema/schema_generated.h:21:10: fatal error: flatb=
uffers/flatbuffers.h: No such file or directory<br />| &nbsp; &nbsp;21 | #i=
nclude "flatbuffers/flatbuffers.h"<br />| &nbsp; &nbsp; &nbsp; | &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~~~~~~~~~~~<br />| compilation term=
inated.</div>
<div>&nbsp;</div>
<div>3.</div>
<div>&nbsp;</div>
<div>| In file included from ../sources/libcamera-apps-1.9.0+git/post_proce=
ssing_stages/segmentation_tf_stage.cpp:8:<br />| ../sources/libcamera-apps-=
1.9.0+git/post_processing_stages/segmentation.hpp:15:82: error: 'uint8_t' w=
as not declared in this scope<br />| &nbsp; &nbsp;15 | &nbsp; &nbsp; &nbsp;=
 &nbsp; Segmentation(int w, int h, std::vector&lt;std::string&gt; l, const =
std::vector&lt;uint8_t&gt; &amp;s)<br />| &nbsp; &nbsp; &nbsp; | &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~<br />| ../source=
s/libcamera-apps-1.9.0+git/post_processing_stages/segmentation.hpp:12:1: no=
te: 'uint8_t' is defined in header '&lt;cstdint&gt;'; this is probably fixa=
ble by adding '#include &lt;cstdint&gt;'</div>
<div>&nbsp;</div>
<div>4.</div>
<div>&nbsp;</div>
<div>| In file included from ../sources/libcamera-apps-1.9.0+git/post_proce=
ssing_stages/tensorflow/lite/core/c/builtin_op_data.h:24,<br />| &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from ../sources/libcame=
ra-apps-1.9.0+git/post_processing_stages/tensorflow/lite/builtin_op_data.h:=
20,<br />| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fr=
om ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tf_stage.hpp:=
16,<br />| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fr=
om ../sources/libcamera-apps-1.9.0+git/post_processing_stages/object_detect=
_tf_stage.cpp:9:<br />| ../sources/libcamera-apps-1.9.0+git/post_processing=
_stages/tensorflow/lite/core/c/common.h:125:7: error: ISO C++ forbids flexi=
ble array member 'data' [-Werror=3Dpedantic]<br />| &nbsp; 125 | &nbsp; int=
 data[];<br />| &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; ^~~~<br />| ../=
sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/cor=
e/c/common.h:169:9: error: ISO C++ forbids flexible array member 'data' [-W=
error=3Dpedantic]<br />| &nbsp; 169 | &nbsp; float data[];<br />| &nbsp; &n=
bsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; ^~~~<br />| cc1plus: all warnings=
 being treated as errors</div>
<div>&nbsp;</div>

--hYWUh2UVPAwhLMWasJJD--

