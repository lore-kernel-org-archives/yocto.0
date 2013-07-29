Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF9C6E0044E
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 11:39:04 -0700 (PDT)
Received: by mail-oa0-f46.google.com with SMTP id h1so13949967oag.33
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 11:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=r/cP85oQih4EOypbZgflQ2EmjlUOgnAi11PjxffUgS8=;
	b=rO4R14TwLVbjZgg2YGL8A///AH1fy7umTia5j2rvVstt2ujYvarA4HCdRbLq1VDVse
	PlNIqBJVPabq18q/xqYe5nmRFl7tGnpQjcHpbms3YDuLocYH52wM/DhD7Z3iTgQ1JQzV
	cuJiSQpbbPSLd/0Uv1qlM4R7YCCKWuDx+aL2IsZL8WxoilqD1Xf0tG1TweQKdGd2aQc0
	bSNdmbe1M5eGRkyXMp1ocjhYxVH6E/4n4iLyIT035fAEjM+2ct4LHz9sTEElKn4mDN0B
	3JssxRvQCKp8GvnGR4iuw7ufMV9RcFSILnRpQ6i3rouiYqdcF5i/yWOmuFONQqPfJ+vR
	kIIg==
X-Received: by 10.60.77.70 with SMTP id q6mr59243296oew.98.1375123143633; Mon,
	29 Jul 2013 11:39:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.221.5 with HTTP; Mon, 29 Jul 2013 11:38:42 -0700 (PDT)
In-Reply-To: <11092468.8KYSURtWvb@helios>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
	<1961165.AMxETSbCgv@helios>
	<CA+Z6RkWiUeBoTaYnWD1QLc4ZPWMtWx=LK_AgnFoKcSbaXkquiA@mail.gmail.com>
	<11092468.8KYSURtWvb@helios>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 30 Jul 2013 00:08:42 +0530
Message-ID: <CA+Z6RkVbia4D2Z_1ZYnqJ4pUYPKHG8-X_C20xhVP7krt3mr=Dg@mail.gmail.com>
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
X-List-Received-Date: Mon, 29 Jul 2013 18:39:06 -0000
X-Groupsio-MsgNum: 15225
Content-Type: multipart/mixed; boundary=047d7b33d3e07fb60504e2aace5d

--047d7b33d3e07fb60504e2aace5d
Content-Type: multipart/alternative; boundary=047d7b33d3e07fb60104e2aace5b

--047d7b33d3e07fb60104e2aace5b
Content-Type: text/plain; charset=ISO-8859-1

I have done changes in .bbclass file. Could it be the reason for such
behavior?
Please find the attached recipe and bbclass.

>>'m not sure that there is, no.
Ok, Thanks..

On Mon, Jul 29, 2013 at 11:34 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Monday 29 July 2013 23:29:25 Navani Srivastava wrote:
> > Thanks Paul.. It worked :)
> > Able to create SDK with qt inbuilt on issuing "bitbake -c populate_sdk
> > core-image-minimal" , but now "bitbake -v core-image-minimal" also invoke
> > do_populate_sdk .. Is this the expected behavior or something else?
>
> Er, that is certainly not expected. Would you be able to attach the current
> recipe?
>
> > Is there anyway to clean only sdk by using bitbake command?
>
> I'm not sure that there is, no.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

Regards
Navani

--047d7b33d3e07fb60104e2aace5b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have done changes in .bbclass file. Could it be the reas=
on for such behavior?<br><div class=3D"gmail_extra">Please find the attache=
d recipe and bbclass.<br><br>&gt;&gt;&#39;m not sure that there is, no.<br>=
</div>

<div class=3D"gmail_extra">Ok, Thanks..<br></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Mon, Jul 29, 2013 at 11:34 PM, Paul Eggl=
eton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com"=
 target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"im">On Mond=
ay 29 July 2013 23:29:25 Navani Srivastava wrote:<br>
&gt; Thanks Paul.. It worked :)<br>
&gt; Able to create SDK with qt inbuilt on issuing &quot;bitbake -c populat=
e_sdk<br>
&gt; core-image-minimal&quot; , but now &quot;bitbake -v core-image-minimal=
&quot; also invoke<br>
&gt; do_populate_sdk .. Is this the expected behavior or something else?<br=
>
<br>
</div>Er, that is certainly not expected. Would you be able to attach the c=
urrent<br>
recipe?<br>
<div class=3D"im"><br>
&gt; Is there anyway to clean only sdk by using bitbake command?<br>
<br>
</div>I&#39;m not sure that there is, no.<br>
<div class=3D""><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br></div></div></blockquote><div><br></=
div><div>Regards<br></div><div>Navani <br></div></div><br></div></div>

--047d7b33d3e07fb60104e2aace5b--

--047d7b33d3e07fb60504e2aace5d
Content-Type: application/octet-stream; name="poky-image.bbclass"
Content-Disposition: attachment; filename="poky-image.bbclass"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hjq0peai0

IyBDb21tb24gZm9yIFBva3kgaW1hZ2VzCiMKIyBDb3B5cmlnaHQgKEMpIDIwMDcgT3BlbmVkSGFu
ZCBMVEQKCkxJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovLyR7UE9LWUJBU0V9L0xJQ0VOU0U7bWQ1
PTNmNDBkNzk5NDM5NzEwOTI4NWVjN2I4MWZkZWIzYjU4IFwKICAgICAgICAgICAgICAgICAgICBm
aWxlOi8vJHtQT0tZQkFTRX0vbWV0YS9DT1BZSU5HLk1JVDttZDU9M2RhOWNmYmNiNzg4YzgwYTAz
ODQzNjFiNGRlMjA0MjAiCgojIElNQUdFX0ZFQVRVUkVTIGNvbnRyb2wgY29udGVudCBvZiBpbWFn
ZXMgYnVpbHQgd2l0aCBQb2t5LgojIAojIEJ5IGRlZmF1bHQgd2UgaW5zdGFsbCB0YXNrLXBva3kt
Ym9vdCBhbmQgdGFzay1iYXNlIHBhY2thZ2VzIC0gdGhpcyBnaXZlcyB1cwojIHdvcmtpbmcgKGNv
bnNvbGUgb25seSkgcm9vdGZzLgojCiMgQXZhaWxhYmxlIElNQUdFX0ZFQVRVUkVTOgojCiMgLSBh
cHBzLWNvbnNvbGUtY29yZQojIC0geDExLWJhc2UgICAgICAgICAgICAtIFgxMSBzZXJ2ZXIgKyBt
aW5pbWFsIGRlc2t0b3AJCiMgLSB4MTEtc2F0byAgICAgICAgICAgIC0gT3BlbmVkSGFuZCBTYXRv
IGVudmlyb25tZW50CiMgLSB4MTEtbmV0Ym9vayAgICAgICAgIC0gTWV0YWNpdHkgYmFzZWQgZW52
aXJvbm1lbnQgZm9yIG5ldGJvb2tzCiMgLSBhcHBzLXgxMS1jb3JlICAgICAgIC0gWCBUZXJtaW5h
bCwgZmlsZSBtYW5hZ2VyLCBmaWxlIGVkaXRvcgojIC0gYXBwcy14MTEtZ2FtZXMKIyAtIGFwcHMt
eDExLXBpbWxpY28gICAgLSBPcGVuZWRIYW5kIFBpbWxpY28gYXBwcwojIC0gdG9vbHMtc2RrICAg
ICAgICAgICAtIFNESwojIC0gdG9vbHMtZGVidWcgICAgICAgICAtIGRlYnVnZ2luZyB0b29scwoj
IC0gdG9vbHMtcHJvZmlsZSAgICAgICAtIHByb2ZpbGluZyB0b29scwojIC0gdG9vbHMtdGVzdGFw
cHMgICAgICAtIHRvb2xzIHVzYWJsZSB0byBtYWtlIHNvbWUgZGV2aWNlIHRlc3RzCiMgLSBuZnMt
c2VydmVyICAgICAgICAgIC0gTkZTIHNlcnZlciAoZXhwb3J0cyAvIG92ZXIgTkZTIHRvIGV2ZXJ5
Ym9keSkKIyAtIGRldi1wa2dzICAgICAgICAgICAgLSBkZXZlbG9wbWVudCBwYWNrYWdlcwojIC0g
ZGJnLXBrZ3MgICAgICAgICAgICAtIGRlYnVnIHBhY2thZ2VzCiMKClBPS1lfQkFTRV9JTlNUQUxM
ID0gJ1wKICAgIHRhc2stcG9reS1ib290IFwKICAgIHRhc2stYmFzZS1leHRlbmRlZCBcCiAgICAk
e0BiYXNlX2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIsICJkYmctcGtncyIsICJ0YXNrLXBva3kt
Ym9vdC1kYmcgdGFzay1iYXNlLWRiZyIsICIiLGQpfSBcCiAgICAke0BiYXNlX2NvbnRhaW5zKCJJ
TUFHRV9GRUFUVVJFUyIsICJkZXYtcGtncyIsICJ0YXNrLXBva3ktYm9vdC1kZXYgdGFzay1iYXNl
LWRldiIsICIiLGQpfSBcCiAgICBcCiAgICAke0BiYXNlX2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJF
UyIsICJhcHBzLWNvbnNvbGUtY29yZSIsICJ0YXNrLXBva3ktYXBwcy1jb25zb2xlIiwgIiIsZCl9
IFwKICAgICR7QGJhc2VfY29udGFpbnMoIklNQUdFX0ZFQVRVUkVTIiwgWyJhcHBzLWNvbnNvbGUt
Y29yZSIsICJkYmctcGtncyJdLCAidGFzay1wb2t5LWFwcHMtY29uc29sZS1kYmciLCAiIixkKX0g
XAogICAgJHtAYmFzZV9jb250YWlucygiSU1BR0VfRkVBVFVSRVMiLCBbImFwcHMtY29uc29sZS1j
b3JlIiwgImRldi1wa2dzIl0sICJ0YXNrLXBva3ktYXBwcy1jb25zb2xlLWRldiIsICIiLGQpfSBc
CiAgICBcCiAgICAke0BiYXNlX2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIsICJ4MTEtYmFzZSIs
ICJ0YXNrLXBva3kteDExLWJhc2UiLCAiIixkKX0gXAogICAgJHtAYmFzZV9jb250YWlucygiSU1B
R0VfRkVBVFVSRVMiLCBbIngxMS1iYXNlIiwgImRiZy1wa2dzIl0sICJ0YXNrLXBva3kteDExLWJh
c2UtZGJnIiwgIiIsZCl9IFwKICAgICR7QGJhc2VfY29udGFpbnMoIklNQUdFX0ZFQVRVUkVTIiwg
WyJ4MTEtYmFzZSIsICJkZXYtcGtncyJdLCAidGFzay1wb2t5LXgxMS1iYXNlLWRldiIsICIiLGQp
fSBcCiAgICBcCiAgICAke0BiYXNlX2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIsICJ4MTEtc2F0
byIsICJ0YXNrLXBva3kteDExLXNhdG8iLCAiIixkKX0gXAogICAgJHtAYmFzZV9jb250YWlucygi
SU1BR0VfRkVBVFVSRVMiLCBbIngxMS1zYXRvIiwgImRiZy1wa2dzIl0sICJ0YXNrLXBva3kteDEx
LXNhdG8tZGJnIiwgIiIsZCl9IFwKICAgICR7QGJhc2VfY29udGFpbnMoIklNQUdFX0ZFQVRVUkVT
IiwgWyJ4MTEtc2F0byIsICJkZXYtcGtncyJdLCAidGFzay1wb2t5LXgxMS1zYXRvLWRldiIsICIi
LGQpfSBcCiAgICBcCiAgICAke0BiYXNlX2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIsICJ4MTEt
bmV0Ym9vayIsICJ0YXNrLXBva3kteDExLW5ldGJvb2siLCAiIiwgZCl9IFwKICAgICR7QGJhc2Vf
Y29udGFpbnMoIklNQUdFX0ZFQVRVUkVTIiwgWyJ4MTEtbmV0Ym9vayIsICJkYmctcGtncyJdLCAi
dGFzay1wb2t5LXgxMS1uZXRib29rLWRiZyIsICIiLCBkKX0gXAogICAgJHtAYmFzZV9jb250YWlu
cygiSU1BR0VfRkVBVFVSRVMiLCBbIngxMS1uZXRib29rIiwgImRldi1wa2dzIl0sICJ0YXNrLXBv
a3kteDExLW5ldGJvb2stZGV2IiwgIiIsIGQpfSBcCiAgICAke0BiYXNlX2NvbnRhaW5zKCJJTUFH
RV9GRUFUVVJFUyIsICJhcHBzLXgxMS1jb3JlIiwgInRhc2stcG9reS1hcHBzLXgxMS1jb3JlIiwg
IiIsZCl9IFwKICAgICR7QGJhc2VfY29udGFpbnMoIklNQUdFX0ZFQVRVUkVTIiwgWyJhcHBzLXgx
MS1jb3JlIiwgImRiZy1wa2dzIl0sICJ0YXNrLXBva3ktYXBwcy14MTEtY29yZS1kYmciLCAiIixk
KX0gXAogICAgJHtAYmFzZV9jb250YWlucygiSU1BR0VfRkVBVFVSRVMiLCBbImFwcHMteDExLWNv
cmUiLCAiZGV2LXBrZ3MiXSwgInRhc2stcG9reS1hcHBzLXgxMS1jb3JlLWRldiIsICIiLGQpfSBc
CiAgICBcCiAgICAke0BiYXNlX2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIsICJhcHBzLXgxMS1n
YW1lcyIsICJ0YXNrLXBva3ktYXBwcy14MTEtZ2FtZXMiLCAiIixkKX0gXAogICAgJHtAYmFzZV9j
b250YWlucygiSU1BR0VfRkVBVFVSRVMiLCBbImFwcHMteDExLWdhbWVzIiwgImRiZy1wa2dzIl0s
ICJ0YXNrLXBva3ktYXBwcy14MTEtZ2FtZXMtZGJnIiwgIiIsZCl9IFwKICAgICR7QGJhc2VfY29u
dGFpbnMoIklNQUdFX0ZFQVRVUkVTIiwgWyJhcHBzLXgxMS1nYW1lcyIsICJkZXYtcGtncyJdLCAi
dGFzay1wb2t5LWFwcHMteDExLWdhbWVzLWRldiIsICIiLGQpfSBcCiAgICBcCiAgICAke0BiYXNl
X2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIsICJhcHBzLXgxMS1waW1saWNvIiwgInRhc2stcG9r
eS1hcHBzLXgxMS1waW1saWNvIiwgIiIsZCl9IFwKICAgICR7QGJhc2VfY29udGFpbnMoIklNQUdF
X0ZFQVRVUkVTIiwgWyJhcHBzLXgxMS1waW1saWNvIiwgImRiZy1wa2dzIl0sICJ0YXNrLXBva3kt
YXBwcy14MTEtcGltbGljby1kYmciLCAiIixkKX0gXAogICAgJHtAYmFzZV9jb250YWlucygiSU1B
R0VfRkVBVFVSRVMiLCBbImFwcHMteDExLXBpbWxpY28iLCAiZGV2LXBrZ3MiXSwgInRhc2stcG9r
eS1hcHBzLXgxMS1waW1saWNvLWRldiIsICIiLGQpfSBcCiAgICBcCiAgICAke0BiYXNlX2NvbnRh
aW5zKCJJTUFHRV9GRUFUVVJFUyIsICJ0b29scy1kZWJ1ZyIsICJ0YXNrLXBva3ktdG9vbHMtZGVi
dWciLCAiIixkKX0gXAogICAgJHtAYmFzZV9jb250YWlucygiSU1BR0VfRkVBVFVSRVMiLCBbInRv
b2xzLWRlYnVnIiwgImRiZy1wa2dzIl0sICJ0YXNrLXBva3ktdG9vbHMtZGVidWctZGJnIiwgIiIs
ZCl9IFwKICAgICR7QGJhc2VfY29udGFpbnMoIklNQUdFX0ZFQVRVUkVTIiwgWyJ0b29scy1kZWJ1
ZyIsICJkZXYtcGtncyJdLCAidGFzay1wb2t5LXRvb2xzLWRlYnVnLWRldiIsICIiLGQpfSBcCiAg
ICBcCiAgICAke0BiYXNlX2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIsICJ0b29scy1wcm9maWxl
IiwgInRhc2stcG9reS10b29scy1wcm9maWxlIiwgIiIsZCl9IFwKICAgICR7QGJhc2VfY29udGFp
bnMoIklNQUdFX0ZFQVRVUkVTIiwgWyJ0b29scy1wcm9maWxlIiwgImRiZy1wa2dzIl0sICJ0YXNr
LXBva3ktdG9vbHMtcHJvZmlsZS1kYmciLCAiIixkKX0gXAogICAgJHtAYmFzZV9jb250YWlucygi
SU1BR0VfRkVBVFVSRVMiLCBbInRvb2xzLXByb2ZpbGUiLCAiZGV2LXBrZ3MiXSwgInRhc2stcG9r
eS10b29scy1wcm9maWxlLWRldiIsICIiLGQpfSBcCiAgICBcCiAgICAke0BiYXNlX2NvbnRhaW5z
KCJJTUFHRV9GRUFUVVJFUyIsICJ0b29scy10ZXN0YXBwcyIsICJ0YXNrLXBva3ktdG9vbHMtdGVz
dGFwcHMiLCAiIixkKX0gXAogICAgJHtAYmFzZV9jb250YWlucygiSU1BR0VfRkVBVFVSRVMiLCBb
InRvb2xzLXRlc3RhcHBzIiwgImRiZy1wa2dzIl0sICJ0YXNrLXBva3ktdG9vbHMtdGVzdGFwcHMt
ZGJnIiwgIiIsZCl9IFwKICAgICR7QGJhc2VfY29udGFpbnMoIklNQUdFX0ZFQVRVUkVTIiwgWyJ0
b29scy10ZXN0YXBwcyIsICJkZXYtcGtncyJdLCAidGFzay1wb2t5LXRvb2xzLXRlc3RhcHBzLWRl
diIsICIiLGQpfSBcCiAgICBcCiAgICAke0BiYXNlX2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIs
ICJ0b29scy1zZGsiLCAidGFzay1wb2t5LXNkayB0YXNrLXBva3ktc3RhbmRhbG9uZS1zZGstdGFy
Z2V0IiwgIiIsZCl9IFwgICAgCiAgICAke0BiYXNlX2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIs
IFsidG9vbHMtc2RrIiwgImRiZy1wa2dzIl0sICJ0YXNrLXBva3ktc2RrLWRiZyIsICIiLGQpfSBc
CiAgICAke0BiYXNlX2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIsIFsidG9vbHMtc2RrIiwgImRl
di1wa2dzIl0sICJ0YXNrLXBva3ktc2RrLWRldiIsICIiLGQpfSBcCiAgICBcCiAgICAke0BiYXNl
X2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIsICJuZnMtc2VydmVyIiwgInRhc2stcG9reS1uZnMt
c2VydmVyIiwgIiIsZCl9IFwKICAgICR7QGJhc2VfY29udGFpbnMoIklNQUdFX0ZFQVRVUkVTIiwg
WyJuZnMtc2VydmVyIiwgImRiZy1wa2dzIl0sICJ0YXNrLXBva3ktbmZzLXNlcnZlci1kYmciLCAi
IixkKX0gXAogICAgXAogICAgJHtAYmFzZV9jb250YWlucygiSU1BR0VfRkVBVFVSRVMiLCBbIm5m
cy1zZXJ2ZXIiLCAiZGV2LXBrZ3MiXSwgInRhc2stcG9reS1uZnMtc2VydmVyLWRldiIsICIiLGQp
fSBcCiAgICBcCiAgICAke0BiYXNlX2NvbnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIsICJwYWNrYWdl
LW1hbmFnZW1lbnQiLCAiJHtST09URlNfUEtHTUFOQUdFfSIsICIke1JPT1RGU19QS0dNQU5BR0Vf
Qk9PVFNUUkFQfSIsZCl9IFwKICAgICR7QGJhc2VfY29udGFpbnMoIklNQUdFX0ZFQVRVUkVTIiwg
InF0NC1wa2dzIiwgInRhc2stcG9reS1xdC1kZW1vcyIsICIiLGQpfSBcCiAgICAke1BPS1lfRVhU
UkFfSU5TVEFMTH0gXAogICAgJwoKUE9LWV9FWFRSQV9JTlNUQUxMID89ICIiCgpJTUFHRV9JTlNU
QUxMID89ICIke1BPS1lfQkFTRV9JTlNUQUxMfSIKClgxMV9JTUFHRV9GRUFUVVJFUyAgPSAieDEx
LWJhc2UgYXBwcy14MTEtY29yZSBwYWNrYWdlLW1hbmFnZW1lbnQiCkVOSEFOQ0VEX0lNQUdFX0ZF
QVRVUkVTID0gIiR7WDExX0lNQUdFX0ZFQVRVUkVTfSBhcHBzLXgxMS1nYW1lcyBhcHBzLXgxMS1w
aW1saWNvIHBhY2thZ2UtbWFuYWdlbWVudCIKU0FUT19JTUFHRV9GRUFUVVJFUyA9ICIke0VOSEFO
Q0VEX0lNQUdFX0ZFQVRVUkVTfSB4MTEtc2F0byIKCmluaGVyaXQgaW1hZ2UKcmVxdWlyZSByZWNp
cGVzLWNvcmUvbWV0YS9tZXRhLXRvb2xjaGFpbi5iYgoKVE9PTENIQUlOX0hPU1RfVEFTSyA9ICJ0
YXNrLXF0ZS10b29sY2hhaW4taG9zdC1uYXRpdmVzZGsgdGFzay1jcm9zcy1jYW5hZGlhbi0ke1RS
QU5TTEFURURfVEFSR0VUX0FSQ0h9IgpUT09MQ0hBSU5fVEFSR0VUX1RBU0sgPSAidGFzay1xdGUt
dG9vbGNoYWluLXRhcmdldCIKVE9PTENIQUlOX09VVFBVVE5BTUUgPSAiJHtTREtfTkFNRX0tdG9v
bGNoYWluLXF0ZS0ke0RJU1RST19WRVJTSU9OfSIKClFUX0RJUl9OQU1FID0gInF0b3BpYSIKUVRf
VE9PTFNfUFJFRklYID0gIiR7U0RLUEFUSE5BVElWRX0ke2JpbmRpcl9uYXRpdmVzZGt9IgoKdG9v
bGNoYWluX2NyZWF0ZV9zZGtfZW52X3NjcmlwdF9hcHBlbmQoKSB7CiAgICBlY2hvICdleHBvcnQg
T0VfUU1BS0VfQ0ZMQUdTPSIkQ0ZMQUdTIicgPj4gJHNjcmlwdAogICAgZWNobyAnZXhwb3J0IE9F
X1FNQUtFX0NYWEZMQUdTPSIkQ1hYRkxBR1MiJyA+PiAkc2NyaXB0CiAgICBlY2hvICdleHBvcnQg
T0VfUU1BS0VfTERGTEFHUz0iJExERkxBR1MiJyA+PiAkc2NyaXB0CiAgICBlY2hvICdleHBvcnQg
T0VfUU1BS0VfQ0M9JHtUQVJHRVRfUFJFRklYfWdjYycgPj4gJHNjcmlwdAogICAgZWNobyAnZXhw
b3J0IE9FX1FNQUtFX0NYWD0ke1RBUkdFVF9QUkVGSVh9ZysrJyA+PiAkc2NyaXB0CiAgICBlY2hv
ICdleHBvcnQgT0VfUU1BS0VfTElOSz0ke1RBUkdFVF9QUkVGSVh9ZysrJyA+PiAkc2NyaXB0CiAg
ICBlY2hvICdleHBvcnQgT0VfUU1BS0VfQVI9JHtUQVJHRVRfUFJFRklYfWFyJyA+PiAkc2NyaXB0
CiAgICBlY2hvICdleHBvcnQgT0VfUU1BS0VfTElCRElSX1FUPSR7U0RLVEFSR0VUU1lTUk9PVH0v
JHtsaWJkaXJ9JyA+PiAkc2NyaXB0CiAgICBlY2hvICdleHBvcnQgT0VfUU1BS0VfSU5DRElSX1FU
PSR7U0RLVEFSR0VUU1lTUk9PVH0vJHtpbmNsdWRlZGlyfS8ke1FUX0RJUl9OQU1FfScgPj4gJHNj
cmlwdAogICAgZWNobyAnZXhwb3J0IE9FX1FNQUtFX01PQz0ke1FUX1RPT0xTX1BSRUZJWH0vbW9j
NCcgPj4gJHNjcmlwdAogICAgZWNobyAnZXhwb3J0IE9FX1FNQUtFX1VJQz0ke1FUX1RPT0xTX1BS
RUZJWH0vdWljNCcgPj4gJHNjcmlwdAogICAgZWNobyAnZXhwb3J0IE9FX1FNQUtFX1VJQzM9JHtR
VF9UT09MU19QUkVGSVh9L3VpYzM0JyA+PiAkc2NyaXB0CiAgICBlY2hvICdleHBvcnQgT0VfUU1B
S0VfUkNDPSR7UVRfVE9PTFNfUFJFRklYfS9yY2M0JyA+PiAkc2NyaXB0CiAgICBlY2hvICdleHBv
cnQgT0VfUU1BS0VfUURCVVNDUFAyWE1MPSR7UVRfVE9PTFNfUFJFRklYfS9xZGJ1c2NwcDJ4bWw0
JyA+PiAkc2NyaXB0CiAgICBlY2hvICdleHBvcnQgT0VfUU1BS0VfUURCVVNYTUwyQ1BQPSR7UVRf
VE9PTFNfUFJFRklYfS9xZGJ1c3htbDJjcHA0JyA+PiAkc2NyaXB0CiAgICBlY2hvICdleHBvcnQg
T0VfUU1BS0VfUVRfQ09ORklHPSR7U0RLVEFSR0VUU1lTUk9PVH0vJHtkYXRhZGlyfS8ke1FUX0RJ
Ul9OQU1FfS9ta3NwZWNzL3Fjb25maWcucHJpJyA+PiAkc2NyaXB0CiAgICBlY2hvICdleHBvcnQg
UU1BS0VTUEVDPSR7U0RLVEFSR0VUU1lTUk9PVH0vJHtkYXRhZGlyfS8ke1FUX0RJUl9OQU1FfS9t
a3NwZWNzL2xpbnV4LWcrKycgPj4gJHNjcmlwdAoKICAgICMgbWFrZSBhIHN5bWJvbGljIGxpbmsg
dG8gbWtzcGVjcyBmb3IgY29tcGF0aWJpbGl0eSB3aXRoIE5va2lhJ3MgU0RLCiAgICAjIGFuZCBR
VENyZWF0b3IKICAgIChjZCAke1NES19PVVRQVVR9LyR7UVRfVE9PTFNfUFJFRklYfS8uLjsgbG4g
LXMgJHtTREtUQVJHRVRTWVNST09UfS91c3Ivc2hhcmUvcXRvcGlhL21rc3BlY3MgbWtzcGVjczsp
Cn0KCgojIENyZWF0ZSAvZXRjL3RpbWVzdGFtcCBkdXJpbmcgaW1hZ2UgY29uc3RydWN0aW9uIHRv
IGdpdmUgYSByZWFzb25hYmx5IHNhbmUgZGVmYXVsdCB0aW1lIHNldHRpbmcKUk9PVEZTX1BPU1RQ
Uk9DRVNTX0NPTU1BTkQgKz0gInJvb3Rmc191cGRhdGVfdGltZXN0YW1wIDsgIgo=

--047d7b33d3e07fb60504e2aace5d
Content-Type: application/octet-stream; name="poky-image.bb"
Content-Disposition: attachment; filename="poky-image.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hjq0pkvp1

IwojIENvcHlyaWdodCAoQykgMjAwNyBPcGVuZWRIYW5kIEx0ZC4KIwojSU1BR0VfSU5TVEFMTCA9
ICJ0YXNrLXBva3ktYm9vdCAke1JPT1RGU19QS0dNQU5BR0VfQk9PVFNUUkFQfSIKCklNQUdFX0lO
U1RBTEwgPSAidGFzay1jb3JlLWJvb3QgJHtST09URlNfUEtHTUFOQUdFX0JPT1RTVFJBUH0iCklN
QUdFX0lOU1RBTEwgKz0gInV0aWwtbGludXggdXBkYXRlLW1vZHVsZXMga2VybmVsLW1vZHVsZXMg
c3lzZnN1dGlscyB3YXRjaGRvZyBpbml0c2NyaXB0cyB0c2xpYi1jb25mIHRzbGliLXRlc3RzIHRz
bGliLWNhbGlicmF0ZSBpcHJvdXRlMiBjYW4tdXRpbHMgZ2Ric2VydmVyIHBvd2VydG9wIHN0cmFj
ZSBnY292LXN5bWxpbmtzIHUtYm9vdC1mdy11dGlscyBkaGNwLWNsaWVudCBjb3JldXRpbHMgYmlu
dXRpbHMtc3ltbGlua3MgZ2RiIHF0NC1lbWJlZGRlZCBkaXJlY3RmYiBsY2QtYXBwcyB6aXAgcHJv
Y3BzIGlvdG9wIGFsc2EtdXRpbHMtYXBsYXkgbXRkLXV0aWxzIHVuemlwIgpJTUFHRV9MSU5HVUFT
ID0gIiAiCgpMSUNFTlNFID0gIk1JVCIKCmluaGVyaXQgcG9reS1pbWFnZQojIHJlbW92ZSBub3Qg
bmVlZGVkIGlwa2cgaW5mb3JtYXRpb25zClJPT1RGU19QT1NUUFJPQ0VTU19DT01NQU5EICs9ICJy
ZW1vdmVfcGFja2FnaW5nX2RhdGFfZmlsZXMgOyAiCg==

--047d7b33d3e07fb60504e2aace5d--
