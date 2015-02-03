Return-Path: <u2bpavankumar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9A53E0076F; Tue,  3 Feb 2015 11:59:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (u2bpavankumar[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D4DE005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 11:59:29 -0800 (PST)
Received: by mail-ob0-f177.google.com with SMTP id wp18so20324330obc.8
	for <yocto@yoctoproject.org>; Tue, 03 Feb 2015 11:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=7oWBChdrA66rkL2E5psqa+WEODWRvspSUt0y2o2jkrM=;
	b=JxYTM3cegXyv3tRVFV9oU7bsHfInrXqcMZABJ/QJJ9WiFkdqCcBUlpLsi1YzdfTXV/
	PwugKhC9VuK2YwlT68Z71v9X+bY/6+HNbIWIyGDNPxTT1ZTrW6NDPW8yKJmkwzZ+hiSe
	rvbp2+zIP8cjHcfrXZ4dDW9f7ezHxqD8nLXvYfIaUa6T2Ua66WSe5A2IT+hHW1ZYvFaQ
	61vRC0K9R2Q90ssRToa4/ksgI/Mu7oajc0uirw01K4BZAwG4clgLbk8sHI0GqZYz3PJi
	zFtzn/V/dR9J5ABNVfWtRFohbITA1w0bkSm7tqs68D8cDvWLmCvJBvfnMiEkWLADCmPM
	4A5Q==
MIME-Version: 1.0
X-Received: by 10.60.98.204 with SMTP id ek12mr16459075oeb.14.1422993568712;
	Tue, 03 Feb 2015 11:59:28 -0800 (PST)
Received: by 10.60.93.165 with HTTP; Tue, 3 Feb 2015 11:59:28 -0800 (PST)
Date: Wed, 4 Feb 2015 01:29:28 +0530
Message-ID: <CAM8Mu=VKpfu9jHkgNn+5O7LntEhzKu+vKL6mB73VC92Aywo9mg@mail.gmail.com>
From: Pavan Kumar B <u2bpavankumar@gmail.com>
To: yocto@yoctoproject.org
Subject: patch_do_patch error for local kernel rep..,
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 03 Feb 2015 19:59:38 -0000
X-Groupsio-MsgNum: 23392
Content-Type: multipart/mixed; boundary=089e0115f49c2f074d050e34822d

--089e0115f49c2f074d050e34822d
Content-Type: multipart/alternative; boundary=089e0115f49c2f0748050e34822b

--089e0115f49c2f0748050e34822b
Content-Type: text/plain; charset=UTF-8

Hi,

I was trying to set the local repo for kernel and build the yocto image.
For that

I have set SRC_URI as below located at $
/fsl-community-bsp/sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-wandboard.inc

SRC_URI = "git:///home/jos/test/temp/mykernel;protocol=file;bareclone=1"

and it started recognizing the local repo..,

Also I have modified the linux-imx file "S" parameter as below

S = "/home/jos/test/temp/mykernel"

But I ran into another error and log is mentioned below

The kernel baseline in my local repo is 3.0.35-4.1.0 and the I am using
dora yocto branch

There are some set of patches I can see at linux-imx_3.0.35.bb as below

# GPU support patches
SRC_URI += "file://drm-vivante-Add-00-sufix-in-returned-bus-Id.patch \

file://0001-ENGR00255688-4.6.9p11.1-gpu-GPU-Kernel-driver-integr.patch \

file://0002-ENGR00265465-gpu-Add-global-value-for-minimum-3D-clo.patch \

file://0003-ENGR00261814-4-gpu-use-new-PU-power-on-off-interface.patch \

file://0004-ENGR00264288-1-GPU-Integrate-4.6.9p12-release-kernel.patch \

file://0005-ENGR00264275-GPU-Correct-suspend-resume-calling-afte.patch \

file://0006-ENGR00265130-gpu-Correct-section-mismatch-in-gpu-ker.patch"


The patch function is failing here. But with the kernel that was downloaded
from git previously for wandboard is compiling with same patches with out
any problem. These patches don't work for 3.0.35-4.1.0?

What should be done here to apply patch & compile the image.

please do guide me over here

Regards,
Pavan

PS: Attached is the error log file

--089e0115f49c2f0748050e34822b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><table class=3D"" height=3D"21" width=3D"6"><tbody><t=
r>
          <td class=3D"">
            <br></td></tr></tbody></table>Hi,<br><br>I was trying to set th=
e local repo for kernel and build the yocto image. For that<br><br>I have s=
et SRC_URI as below located at $ /fsl-community-bsp/sources/meta-fsl-arm-ex=
tra/recipes-kernel/linux/linux-wandboard.inc<br><br>SRC_URI =3D &quot;git:/=
//home/jos/test/temp/mykernel;protocol=3Dfile;bareclone=3D1&quot;<br><br>an=
d it started recognizing the local repo.., <br><br>Also I have modified the=
 linux-imx file &quot;S&quot; parameter as below<br><br>S =3D &quot;/home/j=
os/test/temp/mykernel&quot;<br><br>But I ran into another error and log is =
mentioned below<br><br>The kernel baseline in my local repo is 3.0.35-4.1.0=
 and the I am using dora yocto branch<br><br>There are some set of patches =
I can see at <a href=3D"http://linux-imx_3.0.35.bb">linux-imx_3.0.35.bb</a>=
 as below<br><br># GPU support patches<br>SRC_URI +=3D &quot;file://drm-viv=
ante-Add-00-sufix-in-returned-bus-Id.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0001-ENGR00255688-4.6.9p11.1=
-gpu-GPU-Kernel-driver-integr.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0002-ENGR00265465-gpu-Add-global-v=
alue-for-minimum-3D-clo.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0003-ENGR00261814-4-gpu-use-new-PU-power=
-on-off-interface.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 file://0004-ENGR00264288-1-GPU-Integrate-4.6.9p12-rel=
ease-kernel.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 file://0005-ENGR00264275-GPU-Correct-suspend-resume-calling=
-afte.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 file://0006-ENGR00265130-gpu-Correct-section-mismatch-in-gpu-ker.=
patch&quot;<br><br><br>The patch function is failing here. But with the ker=
nel that was downloaded from git previously for wandboard is compiling with=
 same patches with out any problem. These patches don&#39;t work for 3.0.35=
-4.1.0? <br><br>What should be done here to apply patch &amp; compile the i=
mage.<br><br>please do guide me over here<br><br>Regards,<br>Pavan<br><br><=
/div>PS: Attached is the error log file<br></div>

--089e0115f49c2f0748050e34822b--

--089e0115f49c2f074d050e34822d
Content-Type: text/plain; charset=US-ASCII; name="error_log.txt"
Content-Disposition: attachment; filename="error_log.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i5pplpwz0

TG9hZGluZyBjYWNoZTogMTAwJSB8IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyN8IEVUQTogIDAwOjAwOjAwCkxvYWRlZCAxNzM3IGVudHJpZXMg
ZnJvbSBkZXBlbmRlbmN5IGNhY2hlLgpQYXJzaW5nIHJlY2lwZXM6IDEwMCUgfCMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI3wgVGltZTogMDA6MDA6
MDAKUGFyc2luZyBvZiAxMzQzIC5iYiBmaWxlcyBjb21wbGV0ZSAoMTM0MiBjYWNoZWQsIDEgcGFy
c2VkKS4gMTczNiB0YXJnZXRzLCA3OCBza2lwcGVkLCAwIG1hc2tlZCwgMCBlcnJvcnMuCk5PVEU6
IFJlc29sdmluZyBhbnkgbWlzc2luZyB0YXNrIHF1ZXVlIGRlcGVuZGVuY2llcwoKQnVpbGQgQ29u
ZmlndXJhdGlvbjoKQkJfVkVSU0lPTiAgICAgICAgPSAiMS4yMC4wIgpCVUlMRF9TWVMgICAgICAg
ICA9ICJpNjg2LWxpbnV4IgpOQVRJVkVMU0JTVFJJTkcgICA9ICJVYnVudHUtMTIuMDQiClRBUkdF
VF9TWVMgICAgICAgID0gImFybS1wb2t5LWxpbnV4LWdudWVhYmkiCk1BQ0hJTkUgICAgICAgICAg
ID0gIndhbmRib2FyZC1xdWFkIgpESVNUUk8gICAgICAgICAgICA9ICJwb2t5IgpESVNUUk9fVkVS
U0lPTiAgICA9ICIxLjUuNCIKVFVORV9GRUFUVVJFUyAgICAgPSAiYXJtdjdhIHZmcCBuZW9uIGNh
bGxjb252ZW50aW9uLWhhcmQgY29ydGV4YTkiClRBUkdFVF9GUFUgICAgICAgID0gInZmcC1uZW9u
IgptZXRhICAgICAgICAgICAgICAKbWV0YS15b2N0byAgICAgICAgPSAiKG5vYnJhbmNoKTplMDM1
YzU5ZDdkMzMxZGRhZWZmMTliMDY5MTY5NTY3YWY1ZTZmOGFjIgptZXRhLW9lICAgICAgICAgICA9
ICIobm9icmFuY2gpOmU3NWFlOGY1MGFmM2VmZmU1NjBjNDNmYzYzY2ZkMWYzOTM5NWYwMTEiCm1l
dGEtZnNsLWFybSAgICAgID0gIihub2JyYW5jaCk6NWZkYjYyMGMwOWRmMTFlNzA0MzQwOTJmNjc1
Yzg5MWUwYmE4NDEwOCIKbWV0YS1mc2wtYXJtLWV4dHJhID0gIihub2JyYW5jaCk6Mzc1Zjg5Yjcw
NjU1YmUyYTE3YmJkZTM2ZGU2YWRiNGU0YTVhNjk3NSIKbWV0YS1mc2wtZGVtb3MgICAgPSAiKG5v
YnJhbmNoKTo1YTEyNjc3YWQwMDBhOTI2ZDIzYzQ0NDI2NjcyMmE3NzhlYTIyOGE3IgoKTk9URTog
UHJlcGFyaW5nIHJ1bnF1ZXVlCk5PVEU6IEV4ZWN1dGluZyBTZXRTY2VuZSBUYXNrcwpOT1RFOiBF
eGVjdXRpbmcgUnVuUXVldWUgVGFza3MKRVJST1I6IENvbW1hbmQgRXJyb3I6IGV4aXQgc3RhdHVz
OiAxICBPdXRwdXQ6CkFwcGx5aW5nIHBhdGNoIGRybS12aXZhbnRlLUFkZC0wMC1zdWZpeC1pbi1y
ZXR1cm5lZC1idXMtSWQucGF0Y2gKcGF0Y2hpbmcgZmlsZSBkcml2ZXJzL2dwdS9kcm0vdml2YW50
ZS92aXZhbnRlX2Rydi5jCkh1bmsgIzEgRkFJTEVEIGF0IDU1LgoxIG91dCBvZiAxIGh1bmsgRkFJ
TEVEIC0tIHJlamVjdHMgaW4gZmlsZSBkcml2ZXJzL2dwdS9kcm0vdml2YW50ZS92aXZhbnRlX2Ry
di5jClBhdGNoIGRybS12aXZhbnRlLUFkZC0wMC1zdWZpeC1pbi1yZXR1cm5lZC1idXMtSWQucGF0
Y2ggY2FuIGJlIHJldmVyc2UtYXBwbGllZApFUlJPUjogRnVuY3Rpb24gZmFpbGVkOiBwYXRjaF9k
b19wYXRjaApFUlJPUjogTG9nZmlsZSBvZiBmYWlsdXJlIHN0b3JlZCBpbjogL2hvbWUvam9zL0Rl
c2t0b3Avd29yay95b2N0by9mc2wtY29tbXVuaXR5LWJzcC9idWlsZC90bXAvd29yay93YW5kYm9h
cmRfcXVhZC1wb2t5LWxpbnV4LWdudWVhYmkvbGludXgtd2FuZGJvYXJkLzMuMC4zNS1yMC90ZW1w
L2xvZy5kb19wYXRjaC44MDEyCkVSUk9SOiBUYXNrIDgyICgvaG9tZS9qb3MvRGVza3RvcC93b3Jr
L3lvY3RvL2ZzbC1jb21tdW5pdHktYnNwL3NvdXJjZXMvbWV0YS1mc2wtYXJtLWV4dHJhL3JlY2lw
ZXMta2VybmVsL2xpbnV4L2xpbnV4LXdhbmRib2FyZF8zLjAuMzUuYmIsIGRvX3BhdGNoKSBmYWls
ZWQgd2l0aCBleGl0IGNvZGUgJzEnCk5PVEU6IFRhc2tzIFN1bW1hcnk6IEF0dGVtcHRlZCAxNTU0
IHRhc2tzIG9mIHdoaWNoIDE1NTEgZGlkbid0IG5lZWQgdG8gYmUgcmVydW4gYW5kIDEgZmFpbGVk
LgpObyBjdXJyZW50bHkgcnVubmluZyB0YXNrcyAoMTU1NCBvZiAxNTgxKQoKU3VtbWFyeTogMSB0
YXNrIGZhaWxlZDoKICAvaG9tZS9qb3MvRGVza3RvcC93b3JrL3lvY3RvL2ZzbC1jb21tdW5pdHkt
YnNwL3NvdXJjZXMvbWV0YS1mc2wtYXJtLWV4dHJhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4
LXdhbmRib2FyZF8zLjAuMzUuYmIsIGRvX3BhdGNoClN1bW1hcnk6IFRoZXJlIHdlcmUgMiBFUlJP
UiBtZXNzYWdlcyBzaG93biwgcmV0dXJuaW5nIGEgbm9uLXplcm8gZXhpdCBjb2RlLgoK

--089e0115f49c2f074d050e34822d--
