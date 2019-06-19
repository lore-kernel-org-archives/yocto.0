Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB32BE00D00; Wed, 19 Jun 2019 13:03:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C92CAE00AD5
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 13:03:02 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id i34so546970qta.6
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 13:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SorwOUzJTVHWkvul/TAABQ4n6+fhPfqoTPLSOecq2Bk=;
	b=ba05LV/Tu1giYFxFbvvF33E4khGZ3XKp1KIiz7yZ+zc5bm2t3494wMk5G8pCskAmP3
	S5Bzcm1RhtgCzL/ECTJYu16Ld8tAYOvaqfCxgqvwoy5AQ8Ng7HSg8Hgf9xAwh3Xvu4Rv
	X33PH3AFlwZXR/DL7Tn3prKK5banKVXcQBd2H5YeD4gExVl2vkdITrLDn9NQJ25w2QFL
	BMDKZrkCvsfZpnZFcsBnTFgB6ex8oMlrw1mzQliMjclwWuGRJk1SbFBCQxQccrIlI3WR
	xy/DLFNOJxM1DhPBsxW9ipv0QIx/3Jo+Jj+n2OzWCcl/Fj4hMDIbLUSiJcSkg6b18h+m
	8E5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SorwOUzJTVHWkvul/TAABQ4n6+fhPfqoTPLSOecq2Bk=;
	b=e2PUtd/kkwumgalIy+HgHOj4X0fdBtrdYI0/5kc9yBEJPisoC0WeTTbPguUk8fI+6K
	rfIBqWjMDgzUdWJzrkb0IdxNJm16XbeVjg/7fUHjAbZQJJK4QmQIPW0P/Yra+9WCu4wf
	G6eXei2TRU7JUGq5YqkrobOkwVngtcbXMXNg6dQUK0GMYec0koN7RMFctNNJ17S0OWNY
	axXbm7iwb+nFgXj6v+8oEZGLC7XBvIfLgln6+LzU9Hay0PsLMHD3lFFZT6T2N5m9mDiN
	mjUvHrEcUYQyBnRsdTR8yoS2DhDK6eLd5bmu0krVX0yyAV+1QTL8paTPDTZ244q57d8Q
	/zIQ==
X-Gm-Message-State: APjAAAWN4CpeiQBpm8j26EygPQjVivgLpnVylCr+BF+p48pvGPePN7ds
	wQp7SrlJwHJiD+DCZ8sHb4YYRpbXEBpFJqpS/bE=
X-Google-Smtp-Source: APXvYqy34nnU1Xn/R/WuXNeDbVB61ZoDjD6k9mSxyiEVtbk3QPJfm5QWFp1HO4IpG37brIVTBRTb1Ih05o5XFuZafpU=
X-Received: by 2002:a0c:b0ce:: with SMTP id p14mr35550905qvc.51.1560974581898; 
	Wed, 19 Jun 2019 13:03:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAA42Xj5nygLnFp_ojTP5J59czFuG7f82c6bc_SLax+4+Ot2QVg@mail.gmail.com>
	<CAA42Xj5pNmu1BSVAd2FMTJvwO1fSbtckDfp+EOP9ELikG_=POw@mail.gmail.com>
In-Reply-To: <CAA42Xj5pNmu1BSVAd2FMTJvwO1fSbtckDfp+EOP9ELikG_=POw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Jun 2019 13:02:51 -0700
Message-ID: <CAMKF1spO50-WtUOinnWO9wSqohTUXjBng-z_mFVtf0mbwbRP_A@mail.gmail.com>
To: =?UTF-8?B?SsOpcsOpbXkgU2luZ3k=?= <jeremy.singy@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Can't build SDK while shrinking shadow tools
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
X-List-Received-Date: Wed, 19 Jun 2019 20:03:03 -0000
Content-Type: multipart/alternative; boundary="0000000000007520a4058bb2b78e"

--0000000000007520a4058bb2b78e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 14, 2019 at 2:16 AM J=C3=A9r=C3=A9my Singy <jeremy.singy@gmail.=
com> wrote:

> Hi,
>
> I'm facing a problem by trying to shrink the size of our root filesystem.
> To avoid installing some unneeded tools such as adduser, groupadd,
> nologin, etc. I just created as usual a shadow_%.bbappend in our layer
> which removes the content using do_install_append:
>
>     # do not install alternatives
>     ALTERNATIVE_${PN} =3D ""
>     ALTERNATIVE_${PN}-base =3D ""


This is most probably the reason for your issue
You may want to remove the alternatives which you are deleting but not
everything

>
>
>     # remove unwanted files on target
>     do_install_append_class-target () {
>       rm -r ${D}${base_bindir}
>       rm -r ${D}${base_sbindir}
>       rm -r ${D}${bindir}
>       rm -r ${D}${sbindir}
>     }
>
> Building an image with this works well and I got rid of the unwanted
> tools but I get an error whenever I try to build the SDK for this image
> with do_populate_sdk:
>
>     WARNING: ceres-image-1.0-r0 do_populate_sdk:
> nativesdk-util-linux.postinst returned 1, marking as unpacked only,
> configuration required on target.
>     ERROR: ceres-image-1.0-r0 do_populate_sdk: Postinstall scriptlets
> of ['nativesdk-util-linux'] have failed. If the intention is to defer
> them to first boot,
>     then please place them into pkg_postinst_ontarget_${PN} ().
>     Deferring to first boot via 'exit 1' is no longer supported.
>     Details of the failure are in
>
> /home/chsingj/yocto-thud/tmp/work/ceres_con-oe-linux-gnueabi/ceres-image/=
1.0-r0/temp/log.do_populate_sdk.
>     ERROR: ceres-image-1.0-r0 do_populate_sdk: Function failed:
> do_populate_sdk
>     ERROR: Logfile of failure stored in:
>
> /home/chsingj/yocto-thud/tmp/work/ceres_con-oe-linux-gnueabi/ceres-image/=
1.0-r0/temp/log.do_populate_sdk.28331
>     ERROR: Task
> (/home/chsingj/meta-delta/recipes-core/images/ceres-image.bb:
> do_populate_sdk)
> failed with exit code '1'
>     NOTE: Tasks Summary: Attempted 2730 tasks of which 2729 didn't
> need to be rerun and 1 failed.
>
> The log file shows an error with update-alternatives (probably a
> failing ln call):
>
>     update-alternatives: Error: not linking
>
> [BUILDPATH]/tmp/work/ceres_con-oe-linux-gnueabi/ceres-image/1.0-r0/sdk/im=
age/opt/ceres/sdk-2019.05-r1/sysroots/x86_64-delta-linux/sbin/nologin
> to
> /opt/ceres/sdk-2019.05-r1/sysroots/x86_64-delta-linux/sbin/nologin.util-l=
inux
> since
> [BUILDPATH]/tmp/work/ceres_con-oe-linux-gnueabi/ceres-image/1.0-r0/sdk/im=
age/opt/ceres/sdk-2019.05-r1/sysroots/x86_64-delta-linux/sbin/nologin
> exists and is not a link
>
> If I remove the bbappend, the SDK builds fine but of course my image
> contains the unwanted files. I tried many other recipe tweaks but I
> can't get over some build errors. I'd like to avoid a solution using
> ROOTFS_POSTPROCESS_COMMAND in the image recipe as I would have to
> explicitely list all shadow tools and it would blow up my recipe. Is
> there any solution here? Is it maybe a bug that can be fixed? Thanks!
>
> Regards,
> Jeremy
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000007520a4058bb2b78e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jun 14, 2019 at 2:16 AM J=C3=A9r=C3=A9my Singy &lt;=
<a href=3D"mailto:jeremy.singy@gmail.com">jeremy.singy@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
I&#39;m facing a problem by trying to shrink the size of our root filesyste=
m.<br>
To avoid installing some unneeded tools such as adduser, groupadd,<br>
nologin, etc. I just created as usual a shadow_%.bbappend in our layer<br>
which removes the content using do_install_append:<br>
<br>
=C2=A0 =C2=A0 # do not install alternatives<br>
=C2=A0 =C2=A0 ALTERNATIVE_${PN} =3D &quot;&quot;<br>
=C2=A0 =C2=A0 ALTERNATIVE_${PN}-base =3D &quot;&quot;</blockquote><div dir=
=3D"auto"><br></div><div dir=3D"auto">This is most probably the reason for =
your issue=C2=A0</div><div dir=3D"auto">You may want to remove the alternat=
ives which you are deleting but not everything=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
<br>
=C2=A0 =C2=A0 # remove unwanted files on target<br>
=C2=A0 =C2=A0 do_install_append_class-target () {<br>
=C2=A0 =C2=A0 =C2=A0 rm -r ${D}${base_bindir}<br>
=C2=A0 =C2=A0 =C2=A0 rm -r ${D}${base_sbindir}<br>
=C2=A0 =C2=A0 =C2=A0 rm -r ${D}${bindir}<br>
=C2=A0 =C2=A0 =C2=A0 rm -r ${D}${sbindir}<br>
=C2=A0 =C2=A0 }<br>
<br>
Building an image with this works well and I got rid of the unwanted<br>
tools but I get an error whenever I try to build the SDK for this image<br>
with do_populate_sdk:<br>
<br>
=C2=A0 =C2=A0 WARNING: ceres-image-1.0-r0 do_populate_sdk:<br>
nativesdk-util-linux.postinst returned 1, marking as unpacked only,<br>
configuration required on target.<br>
=C2=A0 =C2=A0 ERROR: ceres-image-1.0-r0 do_populate_sdk: Postinstall script=
lets<br>
of [&#39;nativesdk-util-linux&#39;] have failed. If the intention is to def=
er<br>
them to first boot,<br>
=C2=A0 =C2=A0 then please place them into pkg_postinst_ontarget_${PN} ().<b=
r>
=C2=A0 =C2=A0 Deferring to first boot via &#39;exit 1&#39; is no longer sup=
ported.<br>
=C2=A0 =C2=A0 Details of the failure are in<br>
/home/chsingj/yocto-thud/tmp/work/ceres_con-oe-linux-gnueabi/ceres-image/1.=
0-r0/temp/log.do_populate_sdk.<br>
=C2=A0 =C2=A0 ERROR: ceres-image-1.0-r0 do_populate_sdk: Function failed: d=
o_populate_sdk<br>
=C2=A0 =C2=A0 ERROR: Logfile of failure stored in:<br>
/home/chsingj/yocto-thud/tmp/work/ceres_con-oe-linux-gnueabi/ceres-image/1.=
0-r0/temp/log.do_populate_sdk.28331<br>
=C2=A0 =C2=A0 ERROR: Task<br>
(/home/chsingj/meta-delta/recipes-core/images/ceres-image.bb:do_populate_sd=
k)<br>
failed with exit code &#39;1&#39;<br>
=C2=A0 =C2=A0 NOTE: Tasks Summary: Attempted 2730 tasks of which 2729 didn&=
#39;t<br>
need to be rerun and 1 failed.<br>
<br>
The log file shows an error with update-alternatives (probably a<br>
failing ln call):<br>
<br>
=C2=A0 =C2=A0 update-alternatives: Error: not linking<br>
[BUILDPATH]/tmp/work/ceres_con-oe-linux-gnueabi/ceres-image/1.0-r0/sdk/imag=
e/opt/ceres/sdk-2019.05-r1/sysroots/x86_64-delta-linux/sbin/nologin<br>
to /opt/ceres/sdk-2019.05-r1/sysroots/x86_64-delta-linux/sbin/nologin.util-=
linux<br>
since [BUILDPATH]/tmp/work/ceres_con-oe-linux-gnueabi/ceres-image/1.0-r0/sd=
k/image/opt/ceres/sdk-2019.05-r1/sysroots/x86_64-delta-linux/sbin/nologin<b=
r>
exists and is not a link<br>
<br>
If I remove the bbappend, the SDK builds fine but of course my image<br>
contains the unwanted files. I tried many other recipe tweaks but I<br>
can&#39;t get over some build errors. I&#39;d like to avoid a solution usin=
g<br>
ROOTFS_POSTPROCESS_COMMAND in the image recipe as I would have to<br>
explicitely list all shadow tools and it would blow up my recipe. Is<br>
there any solution here? Is it maybe a bug that can be fixed? Thanks!<br>
<br>
Regards,<br>
Jeremy<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000007520a4058bb2b78e--
