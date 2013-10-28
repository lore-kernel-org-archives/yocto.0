Return-Path: <grsandeep85@gmail.com>
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C19A4E01728
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 08:27:00 -0700 (PDT)
Received: by mail-oa0-f51.google.com with SMTP id h1so3658410oag.24
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 08:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7LwgHtBd1Uh6QH24L14itDORTNvJ79yz2xPMeZ/R4eA=;
	b=IycIzuJ+4h4ZgmDfFy8Z5GfpdlnYzTR7nnQEenwlSCiGL/KCwGbVmtEeV2RYAxRaTR
	1Ni/cXmzzJj4TzIscuWhkOToQ6wkmW5ojk2+gggFYBsfdN6HYWXQFm+z8uCPcu8tkEuF
	u8B+0ndR04k7go9SnkVD0Rw0fruM2k5y9AUWCz/uJsvQWfM0gUCqop/uNUTiGCIJLhZB
	I4We7vLxZjzdZXA5vDJRZTf9PvhPEx8TqUD6DpLoRpd4BHsrYkOuBhXlMNJ3BVp8xCL2
	7BnzqB0Ezar/ieYtdl4Hl2cvsUUuQ/E+Nx37VpYWZVo6TYbo5wyFMva3my/i8riLTpCY
	d6JA==
MIME-Version: 1.0
X-Received: by 10.182.39.161 with SMTP id q1mr2187119obk.54.1382974019777;
	Mon, 28 Oct 2013 08:26:59 -0700 (PDT)
Received: by 10.76.20.102 with HTTP; Mon, 28 Oct 2013 08:26:59 -0700 (PDT)
In-Reply-To: <1385671.jQL6qvobNp@helios>
References: <CAKP9-SgzGG8bLJsu1X1qTDyELnXZCb0B-Xj+rdJvi7Bzg=ATsA@mail.gmail.com>
	<CAE_REAucf4Epi1v=xfEGYhLvc1bG_cDDTrUfzxrYJX1jjPyHMQ@mail.gmail.com>
	<CAKP9-Siz-+PmGtvc+BG6bNq3M8uPMG_qxGx+s75wD=T81hUxzA@mail.gmail.com>
	<1385671.jQL6qvobNp@helios>
Date: Mon, 28 Oct 2013 09:26:59 -0600
Message-ID: <CAKP9-SiihiZWQ2isEP24h20f84Byn2Ny88-Rko3UL0eLis4JEQ@mail.gmail.com>
From: "Sandeep G.R" <grsandeep85@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to bring up "apt and dpkg" packages on yocto
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
X-List-Received-Date: Mon, 28 Oct 2013 15:27:03 -0000
X-Groupsio-MsgNum: 16742
Content-Type: multipart/mixed; boundary=001a11c2de602ece9a04e9cebbae

--001a11c2de602ece9a04e9cebbae
Content-Type: multipart/alternative; boundary=001a11c2de602ece9604e9cebbac

--001a11c2de602ece9604e9cebbac
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

        I have made those changes as PACKAGE_CLASSES ?= "package_deb"
IMAGE_FEATURES
+= "package-management" IMAGE_INSTALL_append += "dpkg" but ended with an
error and attached a log file for reference. I have attached the log for
reference.


On Mon, Oct 28, 2013 at 5:05 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 22 October 2013 08:10:15 Sandeep G.R wrote:
> >       I have selected PACKAGE_CLASSES ?= "package_rpm package_deb" and
> > IMAGE_FSTYPE is tar.gz
>
> "package_deb" must be listed first in PACKAGE_CLASSES if you wish to use
> it for
> constructing your image. You will also need to have "package-management" in
> IMAGE_FEATURES if you want apt/dpkg and the package manager data to be
> installed into the image itself.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
*Thanks & Regards,*
*Sandeep G R*

--001a11c2de602ece9604e9cebbac
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif;color:rgb(7,55,99)">Hi Paul,</div><div class=3D"g=
mail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif;color:=
rgb(7,55,99)">
<br></div><div class=3D"gmail_default" style=3D"font-family:&#39;trebuchet =
ms&#39;,sans-serif;color:rgb(7,55,99)">=A0 =A0 =A0 =A0 I have made those ch=
anges as=A0<font face=3D"Trebuchet MS,sans-serif" color=3D"#073763" style=
=3D"font-size:13px;font-family:&#39;Trebuchet MS&#39;,sans-serif">PACKAGE_C=
LASSES ?=3D &quot;package_deb&quot;</font><font face=3D"Trebuchet MS,sans-s=
erif" color=3D"#073763" style=3D"font-size:13px;font-family:&#39;Trebuchet =
MS&#39;,sans-serif">=A0</font><span style=3D"font-size:13px;color:rgb(0,51,=
102);font-family:&#39;Trebuchet MS&#39;,sans-serif">IMAGE_FEATURES +=3D &qu=
ot;package-management&quot;=A0</span><span style=3D"font-size:13px;color:rg=
b(0,51,102);font-family:&#39;Trebuchet MS&#39;,sans-serif">IMAGE_INSTALL_ap=
pend +=3D &quot;dpkg&quot;</span><font face=3D"Trebuchet MS,sans-serif" col=
or=3D"#073763" style=3D"font-size:13px;font-family:&#39;Trebuchet MS&#39;,s=
ans-serif">=A0but ended with an error and attached a log file for reference=
.</font>=A0I have attached the log for reference.</div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon,=
 Oct 28, 2013 at 5:05 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.i=
ntel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tuesday 22 October 2013=
 08:10:15 Sandeep G.R wrote:<br>
&gt; =A0 =A0 =A0 I have selected PACKAGE_CLASSES ?=3D &quot;package_rpm pac=
kage_deb&quot; and<br>
&gt; IMAGE_FSTYPE is tar.gz<br>
<br>
</div>&quot;package_deb&quot; must be listed first in PACKAGE_CLASSES if yo=
u wish to use it for<br>
constructing your image. You will also need to have &quot;package-managemen=
t&quot; in<br>
IMAGE_FEATURES if you want apt/dpkg and the package manager data to be<br>
installed into the image itself.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><font face=3D"trebuchet ms, sans-serif" color=3D"#073763=
"><b>Thanks &amp; Regards,</b></font><div><font face=3D"trebuchet ms, sans-=
serif" color=3D"#073763"><b>Sandeep G R</b></font><br>
<br></div></div>
</div>

--001a11c2de602ece9604e9cebbac--

--001a11c2de602ece9a04e9cebbae
Content-Type: text/plain; charset=US-ASCII; name="log_deb_rfs.txt"
Content-Disposition: attachment; filename="log_deb_rfs.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hnbv0kty0

c2RhLTE0QHNhbmRlZXA6fi9zZGstMS40LXNvdXJjZS9Rb3JJUS1TREstVjEuNC0yMDEzMDYyNS15
b2N0byQgc291cmNlIGZzbC1zZXR1cC1wb2t5IC1tIHQ0MjQwcWRzLTY0YiAtajQgLXQ0CkNvbmZp
Z3VyaW5nIGZvciB0NDI0MHFkcy02NGIgYm9hcmQgdHlwZQpDcmVhdGluZyBhbiB5b2N0byBidWls
ZCBvdXRwdXQgYXQgL2hvbWUvc2RhLTE0L3Nkay0xLjQtc291cmNlL1FvcklRLVNESy1WMS40LTIw
MTMwNjI1LXlvY3RvL2J1aWxkX3Q0MjQwcWRzLTY0Yl9yZWxlYXNlClJ1biB0aGUgZm9sbG93aW5n
IGNvbW1hbmRzIHRvIHN0YXJ0IGEgYnVpbGQ6CiAgICBiaXRiYWtlIGZzbC1pbWFnZS1jb3JlCiAg
ICBiaXRiYWtlIGZzbC1pbWFnZS1rdm0KICAgIGJpdGJha2UgZnNsLWltYWdlLWZsYXNoCiAgICBi
aXRiYWtlIGZzbC1pbWFnZS1taW5pbWFsCiAgICBiaXRiYWtlIGZzbC1pbWFnZS1sc2Itc2RrCiAg
ICBiaXRiYWtlIGZzbC1pbWFnZS1mdWxsClRvIHJldHVybiB0byB0aGlzIGJ1aWxkIGVudmlyb25t
ZW50IGxhdGVyIHBsZWFzZSBydW46CiAgICBzb3VyY2UgL2hvbWUvc2RhLTE0L3Nkay0xLjQtc291
cmNlL1FvcklRLVNESy1WMS40LTIwMTMwNjI1LXlvY3RvL2J1aWxkX3Q0MjQwcWRzLTY0Yl9yZWxl
YXNlL1NPVVJDRV9USElTCnNkYS0xNEBzYW5kZWVwOn4vc2RrLTEuNC1zb3VyY2UvUW9ySVEtU0RL
LVYxLjQtMjAxMzA2MjUteW9jdG8vYnVpbGRfdDQyNDBxZHMtNjRiX3JlbGVhc2UkIGJpdGJha2Ug
ZnNsLWltYWdlLWZ1bGwKUHNldWRvIGlzIG5vdCBwcmVzZW50IGJ1dCBpcyByZXF1aXJlZCwgYnVp
bGRpbmcgdGhpcyBmaXJzdCBiZWZvcmUgdGhlIG1haW4gYnVpbGQKUGFyc2luZyByZWNpcGVzOiAx
MDAlIHwjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyN8IFRp
bWU6IDAwOjAyOjI2ClBhcnNpbmcgb2YgMTM2MyAuYmIgZmlsZXMgY29tcGxldGUgKDAgY2FjaGVk
LCAxMzYzIHBhcnNlZCkuIDMxMTkgdGFyZ2V0cywgMTI4IHNraXBwZWQsIDAgbWFza2VkLCAwIGVy
cm9ycy4KCkJ1aWxkIENvbmZpZ3VyYXRpb246CkJCX1ZFUlNJT04gICAgICAgID0gIjEuMTguMCIK
QlVJTERfU1lTICAgICAgICAgPSAieDg2XzY0LWxpbnV4IgpOQVRJVkVMU0JTVFJJTkcgICA9ICJV
YnVudHUtMTIuMDQiClRBUkdFVF9TWVMgICAgICAgID0gInBvd2VycGM2NC1mc2xfbmV0d29ya2lu
Zy1saW51eCIKTUFDSElORSAgICAgICAgICAgPSAidDQyNDBxZHMtNjRiIgpESVNUUk8gICAgICAg
ICAgICA9ICJmc2wtbmV0d29ya2luZyIKRElTVFJPX1ZFUlNJT04gICAgPSAiMS40IgpUVU5FX0ZF
QVRVUkVTICAgICA9ICJtNjQgZnB1LWhhcmQgZTY1MDAgYWx0aXZlYyIKVEFSR0VUX0ZQVSAgICAg
ICAgPSAiaGFyZCIKbWV0YSAgICAgICAgICAgICAgCm1ldGEteW9jdG8gICAgICAgIAptZXRhLXlv
Y3RvLWJzcCAgICA9ICJzZGstdjEuNC54OjVhNzUzMjE0M2E0OWY1OWE1Yzg1YjA4ZDNkYWY1NzRm
YjFlY2NkOGQiCm1ldGEtZnNsLXBwYyAgICAgID0gInNkay12MS40Lng6ZjlmZDBhNjE3ZWI2OTEz
Zjg3MzM1YzU1MTkxODMxNWZmNGViZTE4YyIKbWV0YS1mc2wtcHBjLXRvb2xjaGFpbiA9ICJzZGst
djEuNC54OjhlYzk0Y2VjMDQ1MjdjYjk3MWMxMjViMWRkZDJjNTM3NTAzNGQ3MjMiCm1ldGEtdmly
dHVhbGl6YXRpb24gPSAic2RrLXYxLjQueDphZDZkZjRmNTljZDc2NDZmNjFkYjI5ZThmYTUxZjg3
ODMyOWQ2ZjkzIgptZXRhLWZzbC1uZXR3b3JraW5nID0gIihub2JyYW5jaCk6MDBmN2E1MzUwMjlj
YTdlZjhjOTZiYThlOTkxNmQ0NzQyMTY2YmFiMCIKbWV0YS1vZSAgICAgICAgICAgCm1ldGEtbmV0
d29ya2luZyAgID0gInNkay12MS40Lng6N2M4ZGQ4ZjA5NmI2NGE3MDkxNzVkMzdhMDhhNGZiMDJj
YTI2MzYxNiIKCk5PVEU6IFJlc29sdmluZyBhbnkgbWlzc2luZyB0YXNrIHF1ZXVlIGRlcGVuZGVu
Y2llcwpOT1RFOiBQcmVwYXJpbmcgcnVucXVldWUKTk9URTogRXhlY3V0aW5nIFNldFNjZW5lIFRh
c2tzCk5PVEU6IEV4ZWN1dGluZyBSdW5RdWV1ZSBUYXNrcwpOT1RFOiBUYXNrcyBTdW1tYXJ5OiBB
dHRlbXB0ZWQgNjMgdGFza3Mgb2Ygd2hpY2ggNjMgZGlkbid0IG5lZWQgdG8gYmUgcmVydW4gYW5k
IGFsbCBzdWNjZWVkZWQuCk5vIGN1cnJlbnRseSBydW5uaW5nIHRhc2tzICgyIG9mIDkpCkxvYWRp
bmcgY2FjaGU6IDEwMCUgfCMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjfCBFVEE6ICAwMDowMDowMApMb2FkZWQgMzEyMCBlbnRyaWVzIGZyb20gZGVwZW5k
ZW5jeSBjYWNoZS4KCkJ1aWxkIENvbmZpZ3VyYXRpb246CkJCX1ZFUlNJT04gICAgICAgID0gIjEu
MTguMCIKQlVJTERfU1lTICAgICAgICAgPSAieDg2XzY0LWxpbnV4IgpOQVRJVkVMU0JTVFJJTkcg
ICA9ICJVYnVudHUtMTIuMDQiClRBUkdFVF9TWVMgICAgICAgID0gInBvd2VycGM2NC1mc2xfbmV0
d29ya2luZy1saW51eCIKTUFDSElORSAgICAgICAgICAgPSAidDQyNDBxZHMtNjRiIgpESVNUUk8g
ICAgICAgICAgICA9ICJmc2wtbmV0d29ya2luZyIKRElTVFJPX1ZFUlNJT04gICAgPSAiMS40IgpU
VU5FX0ZFQVRVUkVTICAgICA9ICJtNjQgZnB1LWhhcmQgZTY1MDAgYWx0aXZlYyIKVEFSR0VUX0ZQ
VSAgICAgICAgPSAiaGFyZCIKbWV0YSAgICAgICAgICAgICAgCm1ldGEteW9jdG8gICAgICAgIApt
ZXRhLXlvY3RvLWJzcCAgICA9ICJzZGstdjEuNC54OjVhNzUzMjE0M2E0OWY1OWE1Yzg1YjA4ZDNk
YWY1NzRmYjFlY2NkOGQiCm1ldGEtZnNsLXBwYyAgICAgID0gInNkay12MS40Lng6ZjlmZDBhNjE3
ZWI2OTEzZjg3MzM1YzU1MTkxODMxNWZmNGViZTE4YyIKbWV0YS1mc2wtcHBjLXRvb2xjaGFpbiA9
ICJzZGstdjEuNC54OjhlYzk0Y2VjMDQ1MjdjYjk3MWMxMjViMWRkZDJjNTM3NTAzNGQ3MjMiCm1l
dGEtdmlydHVhbGl6YXRpb24gPSAic2RrLXYxLjQueDphZDZkZjRmNTljZDc2NDZmNjFkYjI5ZThm
YTUxZjg3ODMyOWQ2ZjkzIgptZXRhLWZzbC1uZXR3b3JraW5nID0gIihub2JyYW5jaCk6MDBmN2E1
MzUwMjljYTdlZjhjOTZiYThlOTkxNmQ0NzQyMTY2YmFiMCIKbWV0YS1vZSAgICAgICAgICAgCm1l
dGEtbmV0d29ya2luZyAgID0gInNkay12MS40Lng6N2M4ZGQ4ZjA5NmI2NGE3MDkxNzVkMzdhMDhh
NGZiMDJjYTI2MzYxNiIKCk5PVEU6IFJlc29sdmluZyBhbnkgbWlzc2luZyB0YXNrIHF1ZXVlIGRl
cGVuZGVuY2llcwpOT1RFOiBQcmVwYXJpbmcgcnVucXVldWUKTk9URTogRXhlY3V0aW5nIFNldFNj
ZW5lIFRhc2tzCk5PVEU6IEV4ZWN1dGluZyBSdW5RdWV1ZSBUYXNrcwpFUlJPUjogRnVuY3Rpb24g
ZmFpbGVkOiBkb19yb290ZnMgKHNlZSAvaG9tZS9zZGEtMTQvc2RrLTEuNC1zb3VyY2UvUW9ySVEt
U0RLLVYxLjQtMjAxMzA2MjUteW9jdG8vYnVpbGRfdDQyNDBxZHMtNjRiX3JlbGVhc2UvdG1wL3dv
cmsvdDQyNDBxZHNfNjRiLWZzbF9uZXR3b3JraW5nLWxpbnV4L2ZzbC1pbWFnZS1mdWxsLzEuMC1y
MjIvdGVtcC9sb2cuZG9fcm9vdGZzLjMwODAwIGZvciBmdXJ0aGVyIGluZm9ybWF0aW9uKQpFUlJP
UjogTG9nZmlsZSBvZiBmYWlsdXJlIHN0b3JlZCBpbjogL2hvbWUvc2RhLTE0L3Nkay0xLjQtc291
cmNlL1FvcklRLVNESy1WMS40LTIwMTMwNjI1LXlvY3RvL2J1aWxkX3Q0MjQwcWRzLTY0Yl9yZWxl
YXNlL3RtcC93b3JrL3Q0MjQwcWRzXzY0Yi1mc2xfbmV0d29ya2luZy1saW51eC9mc2wtaW1hZ2Ut
ZnVsbC8xLjAtcjIyL3RlbXAvbG9nLmRvX3Jvb3Rmcy4zMDgwMApMb2cgZGF0YSBmb2xsb3dzOgp8
IERFQlVHOiBFeGVjdXRpbmcgc2hlbGwgZnVuY3Rpb24gZG9fcm9vdGZzCnwgZHBrZy1zY2FucGFj
a2FnZXM6IGluZm86IFdyb3RlIDUzIGVudHJpZXMgdG8gb3V0cHV0IFBhY2thZ2VzIGZpbGUuCnwg
ZHBrZy1zY2FucGFja2FnZXM6IGluZm86IFdyb3RlIDYxMDYgZW50cmllcyB0byBvdXRwdXQgUGFj
a2FnZXMgZmlsZS4KfCBkcGtnLXNjYW5wYWNrYWdlczogaW5mbzogV3JvdGUgNzQgZW50cmllcyB0
byBvdXRwdXQgUGFja2FnZXMgZmlsZS4KfCBkcGtnLXNjYW5wYWNrYWdlczogaW5mbzogV3JvdGUg
NTMgZW50cmllcyB0byBvdXRwdXQgUGFja2FnZXMgZmlsZS4KfCBJZ24gZmlsZTogLi8gSW5SZWxl
YXNlCnwgSWduIGZpbGU6IC4vIEluUmVsZWFzZQp8IElnbiBmaWxlOiAuLyBJblJlbGVhc2UKfCBJ
Z24gZmlsZTogLi8gUmVsZWFzZS5ncGcKfCBJZ24gZmlsZTogLi8gUmVsZWFzZS5ncGcKfCBJZ24g
ZmlsZTogLi8gUmVsZWFzZS5ncGcKfCBHZXQ6MSBmaWxlOiAuLyBSZWxlYXNlIFsyMCBCXQp8IEdl
dDoyIGZpbGU6IC4vIFJlbGVhc2UgWzE4IEJdCnwgR2V0OjMgZmlsZTogLi8gUmVsZWFzZSBbMTEg
Ql0KfCBJZ24gZmlsZTogLi8gVHJhbnNsYXRpb24tZW4KfCBJZ24gZmlsZTogLi8gVHJhbnNsYXRp
b24tZW4KfCBJZ24gZmlsZTogLi8gVHJhbnNsYXRpb24tZW4KfCBSZWFkaW5nIHBhY2thZ2UgbGlz
dHMuLi4KfCBXOiBJZ25vcmluZyBQcm92aWRlcyBsaW5lIHdpdGggRGVwQ29tcGFyZU9wIGZvciBw
YWNrYWdlIHBrZ2NvbmZpZ19fcGtnLWNvbmZpZ19fCnwgVzogWW91IG1heSB3YW50IHRvIHJ1biBh
cHQtZ2V0IHVwZGF0ZSB0byBjb3JyZWN0IHRoZXNlIHByb2JsZW1zCnwgUmVhZGluZyBwYWNrYWdl
IGxpc3RzLi4uCnwgQnVpbGRpbmcgZGVwZW5kZW5jeSB0cmVlLi4uCnwgUGFja2FnZSBsaWIzMi1s
aWJnY2Mtcy1kZXYgaXMgbm90IGF2YWlsYWJsZSwgYnV0IGlzIHJlZmVycmVkIHRvIGJ5IGFub3Ro
ZXIgcGFja2FnZS4KfCBUaGlzIG1heSBtZWFuIHRoYXQgdGhlIHBhY2thZ2UgaXMgbWlzc2luZywg
aGFzIGJlZW4gb2Jzb2xldGVkLCBvcgp8IGlzIG9ubHkgYXZhaWxhYmxlIGZyb20gYW5vdGhlciBz
b3VyY2UKfCAKfCBXOiBJZ25vcmluZyBQcm92aWRlcyBsaW5lIHdpdGggRGVwQ29tcGFyZU9wIGZv
ciBwYWNrYWdlIHBrZ2NvbmZpZ19fcGtnLWNvbmZpZ19fCnwgVzogWW91IG1heSB3YW50IHRvIHJ1
biBhcHQtZ2V0IHVwZGF0ZSB0byBjb3JyZWN0IHRoZXNlIHByb2JsZW1zCnwgRTogVW5hYmxlIHRv
IGxvY2F0ZSBwYWNrYWdlIGxpYjMyLWdjYwp8IEU6IFBhY2thZ2UgJ2xpYjMyLWxpYmdjYy1zLWRl
dicgaGFzIG5vIGluc3RhbGxhdGlvbiBjYW5kaWRhdGUKfCBFOiBVbmFibGUgdG8gbG9jYXRlIHBh
Y2thZ2UgbGliMzItYmludXRpbHMKfCBFOiBVbmFibGUgdG8gbG9jYXRlIHBhY2thZ2UgbGliMzIt
ZWdsaWJjLWRldgp8IEVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IGRvX3Jvb3RmcyAoc2VlIC9ob21l
L3NkYS0xNC9zZGstMS40LXNvdXJjZS9Rb3JJUS1TREstVjEuNC0yMDEzMDYyNS15b2N0by9idWls
ZF90NDI0MHFkcy02NGJfcmVsZWFzZS90bXAvd29yay90NDI0MHFkc182NGItZnNsX25ldHdvcmtp
bmctbGludXgvZnNsLWltYWdlLWZ1bGwvMS4wLXIyMi90ZW1wL2xvZy5kb19yb290ZnMuMzA4MDAg
Zm9yIGZ1cnRoZXIgaW5mb3JtYXRpb24pCkVSUk9SOiBUYXNrIDcgKC9ob21lL3NkYS0xNC9zZGst
MS40LXNvdXJjZS9Rb3JJUS1TREstVjEuNC0yMDEzMDYyNS15b2N0by9tZXRhLWZzbC1uZXR3b3Jr
aW5nL2ltYWdlcy9mc2wtaW1hZ2UtZnVsbC5iYiwgZG9fcm9vdGZzKSBmYWlsZWQgd2l0aCBleGl0
IGNvZGUgJzEnCk5PVEU6IFRhc2tzIFN1bW1hcnk6IEF0dGVtcHRlZCA2NDQwIHRhc2tzIG9mIHdo
aWNoIDUwMzggZGlkbid0IG5lZWQgdG8gYmUgcmVydW4gYW5kIDEgZmFpbGVkLgpObyBjdXJyZW50
bHkgcnVubmluZyB0YXNrcyAoNjQ0MCBvZiA2NDQxKQoKU3VtbWFyeTogMSB0YXNrIGZhaWxlZDoK
ICAvaG9tZS9zZGEtMTQvc2RrLTEuNC1zb3VyY2UvUW9ySVEtU0RLLVYxLjQtMjAxMzA2MjUteW9j
dG8vbWV0YS1mc2wtbmV0d29ya2luZy9pbWFnZXMvZnNsLWltYWdlLWZ1bGwuYmIsIGRvX3Jvb3Rm
cwpTdW1tYXJ5OiBUaGVyZSB3YXMgMSBFUlJPUiBtZXNzYWdlIHNob3duLCByZXR1cm5pbmcgYSBu
b24temVybyBleGl0IGNvZGUuCnNkYS0xNEBzYW5kZWVwOn4vc2RrLTEuNC1zb3VyY2UvUW9ySVEt
U0RLLVYxLjQtMjAxMzA2MjUteW9jdG8vYnVpbGRfdDQyNDBxZHMtNjRiX3JlbGVhc2UkCg==

--001a11c2de602ece9a04e9cebbae--
