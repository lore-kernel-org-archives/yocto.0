Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 179A0E00843; Mon,  5 Mar 2018 08:15:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E492E0047F
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 08:15:22 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id v194so10747533itb.0
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 08:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=r1N8F/NkIAPcTNys3nNafHCNIqPPw2Ysi672mJ+1wz4=;
	b=0NVzUxxUC/TlLUUYi5YlSb4CYZ5eWrQH7FFAWV7oY9U1ybgSIBqt3HqwDfWqT6HsSd
	jv4oc7eJan3izWqfqZ403ufM9D2qCym39KC4sfhPAUIkpGH8L1bwagqJLkWolF1ZhU7s
	EfP6XT58kNan5w2iL4U5TaX449D8HsIABNH2Rnze54PJwFL6jCD2abzVtqpszIyMZlNw
	00aRUHs9kEZSsZMIAk1MvmWp1WEixDKMcQOXhjChov+mN8dJ8p2Nh0hs5l/4vigl6xcj
	5u5r0SOocEy78n5z2lINlrmLyjE93Gmagk2w0SpVBvWp7SJ7iXjR0FgMSSWTWWH95mDu
	7+oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=r1N8F/NkIAPcTNys3nNafHCNIqPPw2Ysi672mJ+1wz4=;
	b=ABZ9h+3g2FXMS5MXDDohML6LdrGzJJYiAdCM1OjXVmjRnn+4xdH+fTLoi9bOqNR9Zf
	I7g7f6P/CxedZuRP66FBQbS0jriTkW/BrUWGv28q26BYtebVRfXaiWmDMAbNvrGMbxgO
	gxxkefCkunTFPusywiPVgolLHsPLED3mNlQgYeEYiamWH3H+LfP1kJ6y85yU0IHppccd
	pXC/VoVkjemBxOk+d/4jnLRF8Pa1c5/RtDQxPbOzPJ4Kif8FUjW+IQy5k24lLF5esM+w
	HHSBQ9dgjivU8RlKR2O9J2IsHlw3fXEuB3T4Hy/GeMdkVvKjLiG0OaVCjAFkFK7jbxxR
	KOfQ==
X-Gm-Message-State: AElRT7H3nbFelebSv3Tk4ml3Hl6pXC8EmZItqeXjsrP50bwTkgKScZK3
	ANDeLiC9OEjkFR/jz4QRc9vdWIsvx6iS5BhUFD/zpQ==
X-Google-Smtp-Source: AG47ELv/Vl+CvsFqPEPsn9/l+NzlbcbWc4mU2CPLTbcWdWnl9f0Rc2ME46Gmd5OqmzoCcU4COHwAaVaCvW1XRKb5OEU=
X-Received: by 10.36.34.11 with SMTP id o11mr6362ito.60.1520266522212; Mon, 05
	Mar 2018 08:15:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 5 Mar 2018 08:15:01 -0800 (PST)
In-Reply-To: <CAO80zYsA9mE-CNFOYo9qivpOJEkag1sEm+Xcoawe5_3bpDJHuw@mail.gmail.com>
References: <CAO80zYsA9mE-CNFOYo9qivpOJEkag1sEm+Xcoawe5_3bpDJHuw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 5 Mar 2018 16:15:01 +0000
Message-ID: <CAJTo0LbC6xHqYFoB42=FCr=RqGB9sVMj-2OnK5rp92hwxoOyvA@mail.gmail.com>
To: ikjn <tiffang@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: RREPLACE is not applied do_package_qa() ?
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
X-List-Received-Date: Mon, 05 Mar 2018 16:15:24 -0000
Content-Type: multipart/alternative; boundary="001a113f77ba057bbd0566aca24c"

--001a113f77ba057bbd0566aca24c
Content-Type: text/plain; charset="UTF-8"

That isn't what replaces is for: RREPLACES is used to hint to the package
manager what package should be removed when there are conflicts.  It won't
have any impact on package dependencies at any other time.

Ross

On 1 March 2018 at 03:29, ikjn <tiffang@gmail.com> wrote:

> Hi.
>
> I'm building mali userspace libraries using meta-mali layer + rocko
> but I got errors like these:
>
> ERROR: cogl-1.0-1.22.2-r0 do_package_qa: QA Issue:
> /usr/lib/libcogl-pango.so.20.4.2 contained in package libcogl-pango
> requires libwayland-egl.so, but no providers found in
> RDEPENDS_libcogl-pango? [file-rdeps]
>
> Current recipes are:
>
> * mesa.bb
> PACKAGES = "... libwayland-egl"
> FILES_libwayland_egl = "libwaland-egl.so"
>
> * mali.bb
> do_install() { copy libmali.so to libdir; create a soft
> link(libwayland-egl.so --> libmali.so) }
> PACKAGES = "mali"
> FILES_mali = "${libdir}/*.so"
> RREPLACE_mali = "... libwayland-egl"
>
> * cogl.bb
> RDEPENDS_libcogl-pango = "libwayland-egl"
>
> In this structure, mali specify RREPLACE = libwayland-egl, so I guessed
> package 'libwayland-egl' dependency is replaced by package 'mali' like this:
>
> cogl RDEPENDS--> libwayland-egl
>   ~~> mesa RPROVIDES libwayland-egl
>   ~~> RREPLACE_mali libwayland-egl
>
> But with bitbake -v -c build cogl-1.0 shows that libwayland-egl package
> provides no FILERPROVIDES_xxx on here.
>
> Am I wrong about RREPLACE chain?
> or the problem comes from something else?
> I'm a newbie on yocto and very confused, please help me!
>
> Thanks.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113f77ba057bbd0566aca24c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That isn&#39;t what replaces is for: RREPLACES is used to =
hint to the package manager what package should be removed when there are c=
onflicts.=C2=A0 It won&#39;t have any impact on package dependencies at any=
 other time.<div><br></div><div>Ross</div></div><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On 1 March 2018 at 03:29, ikjn <span dir=3D"=
ltr">&lt;<a href=3D"mailto:tiffang@gmail.com" target=3D"_blank">tiffang@gma=
il.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr">Hi.<div><br><div>I&#39;m building mali userspace libraries using meta-=
mali layer + rocko</div><div>but I got errors like these:</div><div><br></d=
iv><div>ERROR: cogl-1.0-1.22.2-r0 do_package_qa: QA Issue: /usr/lib/libcogl=
-pango.so.20.<wbr>4.2 contained in package libcogl-pango requires libwaylan=
d-egl.so, but no providers found in RDEPENDS_libcogl-pango? [file-rdeps]</d=
iv><div><br></div><div>Current recipes are:</div><div><br></div><div>* <a h=
ref=3D"http://mesa.bb" target=3D"_blank">mesa.bb</a></div><div>PACKAGES =3D=
 &quot;... libwayland-egl&quot;</div><div>FILES_libwayland_egl =3D &quot;li=
bwaland-egl.so&quot;</div><div><br></div><div><span style=3D"color:rgb(34,3=
4,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline">*<s=
pan>=C2=A0</span></span><a href=3D"http://mali.bb" target=3D"_blank">mali.b=
b</a></div><div>do_install() { copy libmali.so to libdir; create a soft lin=
k(libwayland-egl.so --&gt; libmali.so) }</div><div>PACKAGES =3D &quot;mali&=
quot;</div><div>FILES_mali =3D &quot;${libdir}/*.so&quot;</div><div>RREPLAC=
E_mali =3D &quot;... libwayland-egl&quot;</div><div><br></div><div><span st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:non=
e;display:inline">*<span>=C2=A0</span></span><a href=3D"http://cogl.bb" tar=
get=3D"_blank">cogl.bb</a></div><div>RDEPENDS_libcogl-pango =3D &quot;libwa=
yland-egl&quot;</div><div><br></div><div><div style=3D"color:rgb(34,34,34);=
font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial">In this structure, mali specify RRE=
PLACE =3D libwayland-egl, so I guessed package &#39;libwayland-egl&#39; dep=
endency is replaced by package &#39;mali&#39; like this:</div></div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial"><br></di=
v><div>cogl RDEPENDS--&gt; libwayland-egl</div><div>=C2=A0 ~~&gt; mesa RPRO=
VIDES libwayland-egl</div><div>=C2=A0 ~~&gt; RREPLACE_mali libwayland-egl</=
div><div><br></div><div>But with bitbake -v -c build cogl-1.0 shows that li=
bwayland-egl package provides no FILERPROVIDES_xxx on here.</div><div><br><=
/div><div>Am I wrong about RREPLACE chain?</div><div>or the problem comes f=
rom something else?</div><div>I&#39;m a newbie on yocto and very confused, =
please help me!</div><div><br></div><div>Thanks.</div><div><br></div></div>=
</div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113f77ba057bbd0566aca24c--
