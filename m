Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3035EE01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 00:53:25 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id o17so7072782oag.7
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 00:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+D+lvp+O5EoO5nWvsVpwQy0oN0at2vqruxSJCkWHsUQ=;
	b=UKtumE5qsIYdgAB2lAjuY8mI+2HmETcYbKdiTVDi+GTHRS4uVK769jcP3XXIr2uzs7
	5echEhO58tpgry/H44YEy/C2muNqJ4k392xvx2RI3KXGhGLK+D9WcR/jrIIxa9NPZ3WQ
	RyKaAhKLH0dW7JBMIKnhYHM+AsHzTN93welVE3pMbHhR9j/7/n4qzqDtRT9AZr5qNXAk
	lBy2oI3gPtLz+7JdHyanp68vHNPTTsX9UxACDZmM0kipzXP73NLMqKBY0OZS01ikaoKE
	S9MKnexdJVgojizL3gNzOTEKZsUtIisuuj1BHpkLxM5Pb5GAAlzh6KXNgOlPGj3+IBXy
	+PZw==
X-Received: by 10.182.121.137 with SMTP id lk9mr5508893obb.32.1377676404971;
	Wed, 28 Aug 2013 00:53:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.227.138 with HTTP; Wed, 28 Aug 2013 00:53:04 -0700 (PDT)
In-Reply-To: <1843652.5ibqSWhFnV@helios>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
	<4728393.KjK4Yh0aOO@helios>
	<CA+Z6RkWUnice-MrWSXpfA1_+cuFYXgukbfK69oFgmPjWow4W9g@mail.gmail.com>
	<1843652.5ibqSWhFnV@helios>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 28 Aug 2013 13:23:04 +0530
Message-ID: <CA+Z6RkVO6-Szno9iG179ZEVk6DM0WMWYOHece6A_gCx89NoLFg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: bitbake -c populate_sdk -v poky-image
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
X-List-Received-Date: Wed, 28 Aug 2013 07:53:27 -0000
X-Groupsio-MsgNum: 15712
Content-Type: multipart/mixed; boundary=089e0149ccaebbe01a04e4fd48d9

--089e0149ccaebbe01a04e4fd48d9
Content-Type: multipart/alternative; boundary=089e0149ccaebbe01504e4fd48d7

--089e0149ccaebbe01504e4fd48d7
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Following is my image file to generate rootfs image with SDK having Qt
support..
I am able to build SDK successfully but on building any Qt application with
generated SDK getting following error message-

/opt/poky/1.3.2/sysroots/EBboard-poky-linux-gnueabi//usr/include/qtopia/QtCore/qglobal.h:68:21:
fatal error: algorithm: No such file or directory
compilation terminated.
make[2]: *** [obj_rel/AdjustedTime.o] Error 1

Please suggest..

Thanks and Regards
Navani Kamal Srivastava




On Tue, Jul 30, 2013 at 4:18 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 30 July 2013 14:35:40 Navani Srivastava wrote:
> > > I think the problem is this:
> > > require recipes-core/meta/meta-toolchain.bb
> >
> > Yes, it worked.. Thanks
> >
> > > You shouldn't be adding this to an image recipe, and definitely not
> poky-
> > > image.bbclass.
> > then? Is it possible to create .bbappend kind of file for .bbclass which
> > can append the information or I have to duplicate
> toolchain-script.bbclass
> > in my layer?
>
> Sure, you can add the script append and the additional TOOLCHAIN_HOST_TASK
> items in an additional bbclass in your layer and then inherit that in your
> image recipe; just don't require meta-toolchain.bb because that has other
> side-effects.
>
> > >>What version of the build system are you using?
> >
> > I am using poky danny (8.0.2)
>
> OK, in that case why are you using poky-image.bbclass? That was replaced by
> core-image.bbclass in the edison release if I recall correctly, which was
> quite a while ago.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e0149ccaebbe01504e4fd48d7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br></div><br>Following is my =
image file to generate rootfs image with SDK having Qt support..<br></div>I=
 am able to build SDK successfully but on building any Qt application with =
generated SDK getting following error message-<br>

<br>/opt/poky/1.3.2/sysroots/EBboard-poky-linux-gnueabi//usr/include/qtopia=
/QtCore/qglobal.h:68:21: fatal error: algorithm: No such file or directory<=
br>compilation terminated.<br>make[2]: *** [obj_rel/AdjustedTime.o] Error 1=
<br>

<br></div>Please suggest..<br><br></div>Thanks and Regards<br></div>Navani =
Kamal Srivastava<br><div><div><div><div><div><br><br></div></div></div></di=
v></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote"=
>

On Tue, Jul 30, 2013 at 4:18 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@=
linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div class=3D"im">On Tuesday 30 July 2013 14:35:40 Navani Srivastava wrote:=
<br>
&gt; &gt; I think the problem is this:<br>
&gt; &gt; require recipes-core/meta/<a href=3D"http://meta-toolchain.bb" ta=
rget=3D"_blank">meta-toolchain.bb</a><br>
&gt;<br>
&gt; Yes, it worked.. Thanks<br>
&gt;<br>
&gt; &gt; You shouldn&#39;t be adding this to an image recipe, and definite=
ly not poky-<br>
&gt; &gt; image.bbclass.<br>
&gt; then? Is it possible to create .bbappend kind of file for .bbclass whi=
ch<br>
&gt; can append the information or I have to duplicate toolchain-script.bbc=
lass<br>
&gt; in my layer?<br>
<br>
</div>Sure, you can add the script append and the additional TOOLCHAIN_HOST=
_TASK<br>
items in an additional bbclass in your layer and then inherit that in your<=
br>
image recipe; just don&#39;t require <a href=3D"http://meta-toolchain.bb" t=
arget=3D"_blank">meta-toolchain.bb</a> because that has other<br>
side-effects.<br>
<div class=3D"im"><br>
&gt; &gt;&gt;What version of the build system are you using?<br>
&gt;<br>
&gt; I am using poky danny (8.0.2)<br>
<br>
</div>OK, in that case why are you using poky-image.bbclass? That was repla=
ced by<br>
core-image.bbclass in the edison release if I recall correctly, which was<b=
r>
quite a while ago.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--089e0149ccaebbe01504e4fd48d7--

--089e0149ccaebbe01a04e4fd48d9
Content-Type: application/octet-stream; name="poky-image.bb"
Content-Disposition: attachment; filename="poky-image.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hkw8race0

aW5oZXJpdCBwb2t5LWltYWdlCgpUT09MQ0hBSU5fSE9TVF9UQVNLICs9ICJuYXRpdmVzZGstcGFj
a2FnZWdyb3VwLXF0ZS10b29sY2hhaW4taG9zdCIKVE9PTENIQUlOX09VVFBVVE5BTUUgPSAiJHtT
REtfTkFNRX0tdG9vbGNoYWluLXF0ZS0ke0RJU1RST19WRVJTSU9OfSIKVE9PTENIQUlOX09VVFBV
VE5BTUVfVEFHID0gIiR7U0RLX05BTUV9LXRvb2xjaGFpbi1xdGUtJHtESVNUUk9fVkVSU0lPTn0t
JHtHSVRfVEFHX1ZFUlNJT059IgoKUVRfRElSX05BTUUgPSAicXRvcGlhIgpRVF9UT09MU19QUkVG
SVggPSAiJHtTREtQQVRITkFUSVZFfSR7YmluZGlyX25hdGl2ZXNka30iCgpJTUFHRV9OQU1FPSIk
e0lNQUdFX0JBU0VOQU1FfS0ke01BQ0hJTkV9LSR7R0lUX1RBR19WRVJTSU9OfSIKCklNQUdFX0lO
U1RBTEwgPSAicGFja2FnZWdyb3VwLWNvcmUtYm9vdCAke1JPT1RGU19QS0dNQU5BR0VfQk9PVFNU
UkFQfSIKCklNQUdFX0lOU1RBTExfYXBwZW5kICs9ICJ0c2xpYi1jb25mIHRzbGliLXRlc3RzIHRz
bGliLWNhbGlicmF0ZSBpcHJvdXRlMiBwb3dlcnRvcCBzdHJhY2UgdS1ib290LWZ3LXV0aWxzIGdk
YiB6aXAgcHJvY3BzIGFsc2EtdXRpbHMtYXBsYXkgbXRkLXV0aWxzIHVuemlwIGRoY3AtY2xpZW50
IGFsc2EtdXRpbHMtYW1peGVyIHV0aWwtbGludXgtYmxraWQgZTJmc3Byb2dzLW1rZTJmcyB2b3Ji
aXMtdG9vbHMgcXQ0LWVtYmVkZGVkIHVwZGF0ZS1tb2R1bGVzIGlvdG9wIGNhbi11dGlscyBnY292
LXN5bWxpbmtzIGJpbnV0aWxzLXN5bWxpbmtzIGZiZ3JhYiBrZXJuZWwtbW9kdWxlcyBrbW9kIGV2
dGVzdCBsY2QtYXBwcyBjb3JldXRpbHMgZm9udHMgeG1sc3RhcmxldCBzY3JpcHQiCgpMSUNFTlNF
ID0gIk1JVCIKTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vJHtDT1JFQkFTRX0vTElDRU5TRTtt
ZDU9M2Y0MGQ3OTk0Mzk3MTA5Mjg1ZWM3YjgxZmRlYjNiNTggXAogICAgICAgICAgICAgICAgICAg
IGZpbGU6Ly8ke0NPUkVCQVNFfS9tZXRhL0NPUFlJTkcuTUlUO21kNT0zZGE5Y2ZiY2I3ODhjODBh
MDM4NDM2MWI0ZGUyMDQyMCIKCklNQUdFX0xJTkdVQVMgPSAiICIKClJPT1RGU19QT1NUUFJPQ0VT
U19DT01NQU5EICs9ICJyZW1vdmVfcGFja2FnaW5nX2RhdGFfZmlsZXMgOyAiCgpJTUFHRV9DTURf
dWJpX3ByZXBlbmQoKXsKCWNkICR7Q09SRUJBU0V9L21ldGEtcGxhdGZvcm0KCWV4cG9ydCBHSVRf
VEFHX1ZFUlNJT049YGdpdCBkZXNjcmliZWAKCWNkIC0KfQoKSU1BR0VfQ01EX3Rhcl9wcmVwZW5k
KCl7CgljZCAke0NPUkVCQVNFfS9tZXRhLXBsYXRmb3JtCiAgICAgICAgZXhwb3J0IEdJVF9UQUdf
VkVSU0lPTj1gZ2l0IGRlc2NyaWJlYAoJY2QgLQp9Cgpkb190YXNrKCl7CglybSAtcmYgJHtERVBM
T1lfRElSX0lNQUdFfS8ke0lNQUdFX0JBU0VOQU1FfS0ke01BQ0hJTkV9Kgp9Cgp0b29sY2hhaW5f
Y3JlYXRlX3Nka19lbnZfc2NyaXB0X2FwcGVuZCgpIHsKICAgIGVjaG8gJ2V4cG9ydCBPRV9RTUFL
RV9DRkxBR1M9IiRDRkxBR1MiJyA+PiAkc2NyaXB0CiAgICBlY2hvICdleHBvcnQgT0VfUU1BS0Vf
Q1hYRkxBR1M9IiRDWFhGTEFHUyInID4+ICRzY3JpcHQKICAgIGVjaG8gJ2V4cG9ydCBPRV9RTUFL
RV9MREZMQUdTPSIkTERGTEFHUyInID4+ICRzY3JpcHQKICAgIGVjaG8gJ2V4cG9ydCBPRV9RTUFL
RV9DQz0ke1RBUkdFVF9QUkVGSVh9Z2NjJyA+PiAkc2NyaXB0CiAgICBlY2hvICdleHBvcnQgT0Vf
UU1BS0VfQ1hYPSR7VEFSR0VUX1BSRUZJWH1nKysnID4+ICRzY3JpcHQKICAgIGVjaG8gJ2V4cG9y
dCBPRV9RTUFLRV9MSU5LPSR7VEFSR0VUX1BSRUZJWH1nKysnID4+ICRzY3JpcHQKICAgIGVjaG8g
J2V4cG9ydCBPRV9RTUFLRV9BUj0ke1RBUkdFVF9QUkVGSVh9YXInID4+ICRzY3JpcHQKICAgIGVj
aG8gJ2V4cG9ydCBPRV9RTUFLRV9MSUJESVJfUVQ9JHtTREtUQVJHRVRTWVNST09UfS8ke2xpYmRp
cn0nID4+ICRzY3JpcHQKICAgIGVjaG8gJ2V4cG9ydCBPRV9RTUFLRV9JTkNESVJfUVQ9JHtTREtU
QVJHRVRTWVNST09UfS8ke2luY2x1ZGVkaXJ9LyR7UVRfRElSX05BTUV9JyA+PiAkc2NyaXB0CiAg
ICBlY2hvICdleHBvcnQgT0VfUU1BS0VfTU9DPSR7UVRfVE9PTFNfUFJFRklYfS9tb2M0JyA+PiAk
c2NyaXB0CiAgICBlY2hvICdleHBvcnQgT0VfUU1BS0VfVUlDPSR7UVRfVE9PTFNfUFJFRklYfS91
aWM0JyA+PiAkc2NyaXB0CiAgICBlY2hvICdleHBvcnQgT0VfUU1BS0VfVUlDMz0ke1FUX1RPT0xT
X1BSRUZJWH0vdWljMzQnID4+ICRzY3JpcHQKICAgIGVjaG8gJ2V4cG9ydCBPRV9RTUFLRV9SQ0M9
JHtRVF9UT09MU19QUkVGSVh9L3JjYzQnID4+ICRzY3JpcHQKICAgIGVjaG8gJ2V4cG9ydCBPRV9R
TUFLRV9RREJVU0NQUDJYTUw9JHtRVF9UT09MU19QUkVGSVh9L3FkYnVzY3BwMnhtbDQnID4+ICRz
Y3JpcHQKICAgIGVjaG8gJ2V4cG9ydCBPRV9RTUFLRV9RREJVU1hNTDJDUFA9JHtRVF9UT09MU19Q
UkVGSVh9L3FkYnVzeG1sMmNwcDQnID4+ICRzY3JpcHQKICAgIGVjaG8gJ2V4cG9ydCBPRV9RTUFL
RV9RVF9DT05GSUc9JHtTREtUQVJHRVRTWVNST09UfS8ke2RhdGFkaXJ9LyR7UVRfRElSX05BTUV9
L21rc3BlY3MvcWNvbmZpZy5wcmknID4+ICRzY3JpcHQKICAgIGVjaG8gJ2V4cG9ydCBRTUFLRVNQ
RUM9JHtTREtUQVJHRVRTWVNST09UfS8ke2RhdGFkaXJ9LyR7UVRfRElSX05BTUV9L21rc3BlY3Mv
bGludXgtZysrJyA+PiAkc2NyaXB0CgogICAgIyBtYWtlIGEgc3ltYm9saWMgbGluayB0byBta3Nw
ZWNzIGZvciBjb21wYXRpYmlsaXR5IHdpdGggTm9raWEncyBTREsKICAgICMgYW5kIFFUQ3JlYXRv
cgogICAgKGNkICR7U0RLX09VVFBVVH0vJHtRVF9UT09MU19QUkVGSVh9Ly4uOyBsbiAtcyAke1NE
S1RBUkdFVFNZU1JPT1R9L3Vzci9zaGFyZS9xdG9waWEvbWtzcGVjcyBta3NwZWNzOykKfQoKY3Jl
YXRlX3NoYXJfYXBwZW5kKCl7CiAgICAgICAgY2QgJHtDT1JFQkFTRX0vbWV0YS1wbGF0Zm9ybQog
ICAgICAgIGV4cG9ydCBHSVRfVEFHX1ZFUlNJT049YGdpdCBkZXNjcmliZWAKCiAgICAgICAgIyBy
ZW5hbWUgY3Jvc3MgdG9vbGNoYWluIHdpdGggYWRkZWQgZ2l0IHZlcnNpb24KICAgICAgICBtdiAk
e1NES19ERVBMT1l9LyR7VE9PTENIQUlOX09VVFBVVE5BTUV9LnNoICAgICAke1NES19ERVBMT1l9
LyR7VE9PTENIQUlOX09VVFBVVE5BTUVfVEFHfS5zaAp9CgphZGR0YXNrIGRvX2NsZWFuIGJlZm9y
ZSBJTUFHRV9DTURfdWJpX3ByZXBlbmQKYWRkdGFzayBkb19jbGVhbiBiZWZvcmUgQ09NUFJFU1Nf
Q01EX2J6Ml9wcmVwZW5kCmFkZHRhc2sgZG9fdGFzayBiZWZvcmUgZG9fY2xlYW4K

--089e0149ccaebbe01a04e4fd48d9--
