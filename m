Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f41.google.com (mail-ee0-f41.google.com [74.125.83.41])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 27EBBE00515
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 09:10:25 -0800 (PST)
Received: by mail-ee0-f41.google.com with SMTP id c13so1506363eek.28
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 09:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=fJI8M5vHVxj0mx9bvAQjcMyJ1grAZm07GEckNNiFd9o=;
	b=CqaA+oF9GZeWc80XSbsBLen+2nfHBhSzyxqf+vP/I8+EE3XjsRkiFBcwCJ5rL0VySp
	vWVPgoX6IgpXrArpx7TM7m/bDia4xCdOS+3w1MjEUKQnka7jNisKa4Y77QWNxNK/fav1
	zx+VGBBnyiuh0mVNGioteQxbNphjZq0jsuzjs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=fJI8M5vHVxj0mx9bvAQjcMyJ1grAZm07GEckNNiFd9o=;
	b=GoKKEu5QOGys5yufxPWno9kHPRdcEC3J/NZVj8SM58WGuDBj6zzC3a42SG6Gpw1d4m
	WBTrKKtXzgu5O1hUiltJo4UzEgjeYPTD2Sjr+R7tqVkCjUagDRj0kytsFLYjTBXyD1wD
	EaxYT0FQ1KsVzOzAlQh6xQwDT6bYxe4D3NhcrJ2kkhFVVHDQMsLKbKU584EVNA5jXZMA
	k/QA0RzYRhMLuGnYCFL0RPWS/zOwzke4kFS7JRsDcsn3SG4OLS5VO14dcsFLUW3fyvki
	jIMCq+wl0ChPLLJ04S1qw/GoIRGrUcwirTpYwjcUC/Kzb/9u0ooqx54s8a3KLElrkmUa
	UYfg==
MIME-Version: 1.0
X-Received: by 10.14.211.132 with SMTP id w4mr20580709eeo.36.1360861823956;
	Thu, 14 Feb 2013 09:10:23 -0800 (PST)
Received: by 10.223.197.195 with HTTP; Thu, 14 Feb 2013 09:10:23 -0800 (PST)
In-Reply-To: <1360857762.68234.YahooMailClassic@web140003.mail.bf1.yahoo.com>
References: <1360857762.68234.YahooMailClassic@web140003.mail.bf1.yahoo.com>
Date: Thu, 14 Feb 2013 09:10:23 -0800
Message-ID: <CA+gsK-o5NBuaCcukAohuMh06VXpxyJVD9Bz=G7W8r0hu-TV9Mw@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Andre Bella <scancool@yahoo.com>
X-Gm-Message-State: ALoCoQnB+Ti+wgYpOwRXctp/vp38DcS6WhZaTMVUxrnFvY62b9ILBGnqDiTTyu+MLWecDqJRmPyl
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: select installation packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Feb 2013 17:10:26 -0000
X-Groupsio-MsgNum: 12124
Content-Type: multipart/mixed; boundary=047d7b603b8a9af8e504d5b25576

--047d7b603b8a9af8e504d5b25576
Content-Type: multipart/alternative; boundary=047d7b603b8a9af8de04d5b25574

--047d7b603b8a9af8de04d5b25574
Content-Type: text/plain; charset=ISO-8859-1

Hi Andre,

There actually is no recipe for building the nano editor in YP by default.
Unless you added one,

bitbake -b nano

would result in this output

ERROR: Unable to find any recipe file matching 'nano'

I have attached a recipe for you to build nano and a patch to handle a
configuration mistake configure.ac causing do_configure to fail.

If you add that recipe you can run bitbake nano. You can also include into
your image by adding

IMAGE_INSTALL_append = " nano"

to your conf/local.conf file.

:rjs



On Thu, Feb 14, 2013 at 8:02 AM, Andre Bella <scancool@yahoo.com> wrote:

> Hello
>  I had used buildroot in the pass and I like it cause is very easy to use,
> but I'm moving to yocto cause it has more applications than buildroot, in
> buildroot you can select the packages you want to add by going to
> menuconfig, how do I select the packages I wan to add in yocto, for example
> if I wan to add nano or gstreamer, from the guide I seen you just type
> bitbake -b nano, but is there a menuconfig on yocto where you can select
> the package you want to add before you build the image?
> thanks,
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
-- 
*Rudolf J. Streif*
Director of Embedded Solutions
The Linux Foundation

rudolf.streif@linux.com
Phone: +1.619.631.5383
Skype: rudolfstreif
PGP: RSA 2048/2048 D6E7D28B

Linux Foundation Events Schedule:  events.linuxfoundation.org
Linux Foundation Training Schedule: training.linuxfoundation.org

--047d7b603b8a9af8de04d5b25574
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Andre,<div><br></div><div style>There actually is no re=
cipe for building the nano editor in YP by default. Unless you added one,</=
div><div style><br></div><div style>bitbake -b nano</div><div style><br></d=
iv>
<div style>would result in this output</div><div style><br></div><div style=
>ERROR: Unable to find any recipe file matching &#39;nano&#39;<br></div><di=
v style><br></div><div style>I have attached a recipe for you to build nano=
 and a patch to handle a configuration mistake <a href=3D"http://configure.=
ac">configure.ac</a> causing do_configure to fail.</div>
<div style><br></div><div style>If you add that recipe you can run bitbake =
nano. You can also include into your image by adding</div><div style><br></=
div><div style>IMAGE_INSTALL_append =3D &quot; nano&quot;</div><div style>
<br></div><div style>to your conf/local.conf file.</div><div style><br></di=
v><div style>:rjs</div><div style><br></div></div><div class=3D"gmail_extra=
"><br><br><div class=3D"gmail_quote">On Thu, Feb 14, 2013 at 8:02 AM, Andre=
 Bella <span dir=3D"ltr">&lt;<a href=3D"mailto:scancool@yahoo.com" target=
=3D"_blank">scancool@yahoo.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><table cellspacing=3D"0" cellpadding=3D"0" b=
order=3D"0"><tbody><tr><td valign=3D"top" style=3D"font:inherit">Hello <br>=
=A0I had used buildroot in the pass and I like it cause is very easy to use=
, but I&#39;m moving to yocto cause it has more applications than buildroot=
, in buildroot you can select the packages you want to add by going to menu=
config, how do I select the packages I wan to add in yocto, for example if =
I wan to add nano or gstreamer, from the guide I seen you just type bitbake=
 -b nano, but is there a menuconfig on yocto where you can select the packa=
ge you want to add before you build the image?<br>
thanks,<br></td></tr></tbody></table><br>__________________________________=
_____________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>--=A0<br=
><font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b></font>=
<div><font face=3D"arial, helvetica, sans-serif">Director of Embedded Solut=
ions</font></div>
<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>
<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.619.631.5383</fo=
nt></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolfstre=
if</font></div><div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 20=
48/2048 D6E7D28B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>
Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>
</span></font></div>
</div>

--047d7b603b8a9af8de04d5b25574--

--047d7b603b8a9af8e504d5b25576
Content-Type: application/octet-stream; name="nano_2.3.1.bb"
Content-Disposition: attachment; filename="nano_2.3.1.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hd65zf990

U1VNTUFSWSA9ICJHTlUgbmFubyAtIGFuIGVuaGFuY2VkIGNsb25lIG9mIHRoZSBQaWNvIHRleHQg
ZWRpdG9yIgoKREVTQ1JJUFRJT04gPSAiR05VIG5hbm8gLSBhbiBlbmhhbmNlZCBjbG9uZSBvZiB0
aGUgUGljbyB0ZXh0IGVkaXRvciIKCkFVVEhPUiA9ICJDaHJpcyBBbGxlZ3JldHRhIDxjaHJpc0Bh
c3R5Lm9yZz4sIFwKRGF2aWQgTGF3cmVuY2UgUmFtc2V5IDxwb29rYTEwOUBnbWFpbC5jb20+LCBc
CkpvcmRpIE1hbGxhY2ggPGpvcmRpQGdudS5vcmc+LCBcCkFkYW0gUm9nb3lza2kgPHJvZ295c2tp
QGNzLnV0ZXhhcy5lZHU+LCBcClJvYmVydCBTaWVtYmFyc2tpIDxyanNAYW5kcmV3LmNtdS5lZHU+
LCBcClJvY2NvIENvcnNpIDxyb2Njby5jb3JzaUBzeW1wYXRpY28uY2E+LCBcCkRhdmlkIEJlbmJl
bm5pY2sgPGRiZW5iZW5uQG1hdGguY29ybmVsbC5lZHU+LCBcCk1pa2UgRnJ5c2luZ2VyIDx2YXBp
ZXJAZ2VudG9vLm9yZz4iCgpIT01FUEFHRSA9ICJodHRwOi8vd3d3Lm5hbm8tZWRpdG9yLm9yZyIK
QlVHVFJBQ0tFUiA9ICJodHRwczovL3NhdmFubmFoLmdudS5vcmcvYnVncy8/Z3JvdXA9bmFubyIK
ClNFQ1RJT04gPSAiY29uc29sZS91dGlscyIKUFJJT1JJVFkgPSAib3B0aW9uYWwiCgpQUk9WSURF
UyArPSAiZWRpdG9yL25hbm8iCgpMSUNFTlNFID0gIk5hbm8gR1BMdjMiCkxJQ19GSUxFU19DSEtT
VU0gPSAiZmlsZTovL0NPUFlJTkc7bWQ1PWYyN2RlZmUxZTk2YzJlMWVjZDRlMGM5YmU4OTY3OTQ5
IgoKREVQRU5EUyA9ICJuY3Vyc2VzIgpQUiA9ICJyMCIKClBWX01BSk9SID0gIiR7QGJiLmRhdGEu
Z2V0VmFyKCdQVicsZCwxKS5zcGxpdCgnLicpWzBdfS4ke0BiYi5kYXRhLmdldFZhcignUFYnLGQs
MSkuc3BsaXQoJy4nKVsxXX0iCgpTUkNfVVJJID0gImh0dHA6Ly93d3cubmFuby1lZGl0b3Iub3Jn
L2Rpc3QvdiR7UFZfTUFKT1J9L25hbm8tJHtQVn0udGFyLmd6IFwKICAgICAgICAgICBmaWxlOi8v
bmN1cnNlc3cucGF0Y2giClNSQ19VUklbbWQ1c3VtXSA9ICJhZjA5Zjg4Mjg3NDRiMGVhMDgwOGQ2
YzE5YTJiNGJmZCIKU1JDX1VSSVtzaGEyNTZzdW1dID0gImI3YmFjZTlhOGU1NDNiODQ3MzZkNmVm
NWNlNTQzMDMwNTc0NmVmZWEzYWFjYjI0MzkxZjY5MmVmYzZmM2M4ZDMiCgppbmhlcml0IGF1dG90
b29scyBnZXR0ZXh0CgpSREVQRU5EU18ke1BOfSA9ICJuY3Vyc2VzIgo=

--047d7b603b8a9af8e504d5b25576
Content-Type: application/octet-stream; name="ncursesw.patch"
Content-Disposition: attachment; filename="ncursesw.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hd65zj081

LS0tIG5hbm8tMi4yLjYub3JpZy9jb25maWd1cmUuYWMJMjAxMi0wMy0wNyAxOToxMzozMC4xOTYw
NjMwODYgLTA4MDAKKysrIG5hbm8tMi4yLjYvY29uZmlndXJlLmFjCTIwMTItMDMtMDcgMTk6MDc6
NDYuODc2MDcxMjg1IC0wODAwCkBAIC00NDIsNyArNDQyLDcgQEAKICAgICBBQ19DSEVDS19IRUFE
RVJTKG5jdXJzZXMuaCkKIAogICAgIGlmIHRlc3QgeCRlbmFibGVfdXRmOCAhPSB4bm87IHRoZW4K
LQlBQ19DSEVDS19MSUIobmN1cnNlc3csIGdldF93Y2gsIFtDVVJTRVNfTElCPSItbG5jdXJzZXN3
IiBDUFBGTEFHUz0iLUkvdXNyL2luY2x1ZGUvbmN1cnNlc3cgJENQUEZMQUdTIiBDVVJTRVNfTElC
X05BTUU9bmN1cnNlc3cgQ1VSU0VTX0xJQl9XSURFPXllc10pCisJQUNfQ0hFQ0tfTElCKG5jdXJz
ZXN3LCBnZXRfd2NoLCBbQ1VSU0VTX0xJQj0iLWxuY3Vyc2VzdyIgQ1VSU0VTX0xJQl9OQU1FPW5j
dXJzZXN3IENVUlNFU19MSUJfV0lERT15ZXNdKQogICAgIGZpCiAKICAgICBpZiBldmFsICJ0ZXN0
IHgkQ1VSU0VTX0xJQl9OQU1FID0geCI7IHRoZW4K

--047d7b603b8a9af8e504d5b25576--
