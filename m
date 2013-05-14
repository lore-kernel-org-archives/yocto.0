Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2763FE014F5
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 02:21:50 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ib11so266475vcb.21
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 02:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:date:x-google-sender-auth:message-id
	:subject:from:to:content-type;
	bh=yfA7WLqAO3QeQs7GVVIQQIHrYb+VVy7SQrPwOnJhi5I=;
	b=MyMlUuU2OF3G7JURpL6KvbKKopcPHpXTfeWq2e8HLLgd1/PnJDYkIAWVi5100grdVm
	FKeRruhRzbkr+VbULOnXLgzq3G5Mf9+6aIyqFMxHoepKdCNhRcuRHIvBRpJm3v0FSkRI
	pRAz9yCkj57uwIWsNHNH9vDb4E4aUTR2fVbG9VO1yLsjRUxbpFI3h0Bof5g+0Yh8Z3fn
	qsrYrBDuRTBiuUKfG85YP6HSgIph5RD4EE32XT2jWDuDrnx3+Dw1Mzr6MojokKjf40/d
	9Cn/zB4ce6a7o/974c+/nurQD19Aj+7Nw2B992VBZ7k/w1AooUnQHYijDeTJOYSzem71
	cvqw==
MIME-Version: 1.0
X-Received: by 10.52.117.7 with SMTP id ka7mr908246vdb.109.1368523309165; Tue,
	14 May 2013 02:21:49 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.116.194 with HTTP; Tue, 14 May 2013 02:21:49 -0700 (PDT)
Date: Tue, 14 May 2013 11:21:49 +0200
X-Google-Sender-Auth: VFc78ysv2LBVAeN-oEwdQ8y29PY
Message-ID: <CAFMfyzKYd7JWyzrKLBigCuZLtQeioyjhs2DAM8GvnXq9xGBanA@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: lmsensors
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
X-List-Received-Date: Tue, 14 May 2013 09:21:50 -0000
Content-Type: multipart/alternative; boundary=bcaec547c565b5b21304dcaa29de

--bcaec547c565b5b21304dcaa29de
Content-Type: text/plain; charset=ISO-8859-1

Hi Guys,

It has been a month I have been fighting with installing the package
"lmsensors" and had no success till today.... I would really appreciate
much help....

The background goes like this..

*bitbake lmsensors * works perfectly but when I add the package into the
rootfs I get the following error

* Package lmsensors-config is not available, but is referred to by another
package.*
*| This may mean that the package is missing, has been obsoleted, or*
*| is only available from another source*
*| *
*| Package lmsensors is not available, but is referred to by another
package.*
*| This may mean that the package is missing, has been obsoleted, or*
*| is only available from another source*
*| *
*| E: Package 'lmsensors-config' has no installation candidate*
*| E: Package 'lmsensors' has no installation candidate*
*| ERROR: Function failed: do_rootfs (see
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_rootfs.29976
for further information)*
*ERROR: Task 7 (/home/damarla/yocto/poky/meta/recipes-graphics/images/
core-image-skidata.bb, do_rootfs) failed with exit code '1'*
*NOTE: Tasks Summary: Attempted 5210 tasks of which 4529 didn't need to be
rerun and 1 failed.*
*No currently running tasks (5210 of 5211)*
*
*
*Summary: 1 task failed:*
*  /home/damarla/yocto/poky/meta/recipes-graphics/images/
core-image-skidata.bb, do_rootfs*
*Summary: There was 1 WARNING message shown.*
*Summary: There was 1 ERROR message shown, returning a non-zero exit code.*
*
*
I would really need help in this issue as this ends my basic play with
creating a image for NVIDIA tegra board

Greets,
Satya

--bcaec547c565b5b21304dcaa29de
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,<div><br></div><div>It has been a month I have bee=
n fighting with installing the package &quot;lmsensors&quot; and had no suc=
cess till today.... I would really appreciate much help....=A0</div><div><b=
r>
</div><div style>The background goes like this..=A0</div><div style><br></d=
iv><div style><i>bitbake lmsensors </i>=A0works perfectly but when I add th=
e package into the rootfs I get the following error</div><div style><br></d=
iv>
<div style><div><b>=A0Package lmsensors-config is not available, but is ref=
erred to by another package.</b></div><div><b>| This may mean that the pack=
age is missing, has been obsoleted, or</b></div><div><b>| is only available=
 from another source</b></div>
<div><b>|=A0</b></div><div><b>| Package lmsensors is not available, but is =
referred to by another package.</b></div><div><b>| This may mean that the p=
ackage is missing, has been obsoleted, or</b></div><div><b>| is only availa=
ble from another source</b></div>
<div><b>|=A0</b></div><div><b>| E: Package &#39;lmsensors-config&#39; has n=
o installation candidate</b></div><div><b>| E: Package &#39;lmsensors&#39; =
has no installation candidate</b></div><div><b>| ERROR: Function failed: do=
_rootfs (see /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_=
harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_rootfs.299=
76 for further information)</b></div>
<div><b>ERROR: Task 7 (/home/damarla/yocto/poky/meta/recipes-graphics/image=
s/<a href=3D"http://core-image-skidata.bb">core-image-skidata.bb</a>, do_ro=
otfs) failed with exit code &#39;1&#39;</b></div><div><b>NOTE: Tasks Summar=
y: Attempted 5210 tasks of which 4529 didn&#39;t need to be rerun and 1 fai=
led.</b></div>
<div><b>No currently running tasks (5210 of 5211)</b></div><div><b><br></b>=
</div><div><b>Summary: 1 task failed:</b></div><div><b>=A0 /home/damarla/yo=
cto/poky/meta/recipes-graphics/images/<a href=3D"http://core-image-skidata.=
bb">core-image-skidata.bb</a>, do_rootfs</b></div>
<div><b>Summary: There was 1 WARNING message shown.</b></div><div><b>Summar=
y: There was 1 ERROR message shown, returning a non-zero exit code.</b></di=
v><div><b><br></b></div><div style>I would really need help in this issue a=
s this ends my basic play with creating a image for NVIDIA tegra board=A0</=
div>
<div style><br></div><div style>Greets,</div><div style>Satya</div><div><br=
></div></div></div>

--bcaec547c565b5b21304dcaa29de--
