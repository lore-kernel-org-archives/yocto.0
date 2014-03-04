Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f193.google.com (mail-vc0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F8B1E00A1F
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 10:30:34 -0800 (PST)
Received: by mail-vc0-f193.google.com with SMTP id hq11so1822423vcb.8
	for <yocto@yoctoproject.org>; Tue, 04 Mar 2014 10:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=usWxtCvUbQxxhrmk7Wkul2qeaP7e7u2sJv/H5GvnQ3w=;
	b=A9N8+L23zoWEcyNuDA28CbXScZQCIh83kz8WqVtj3Rm0nqvbrdKl5eQv0r4PGxADCU
	XCGThO+VERKGivEOjjnJDFlEz2oscaE09f7zZfpvx7wThG/IQ2kMXmvUvIwYQX8BAVc3
	+NtxzejEjGOCbORrm0mEc2Xx/Uke7gYFqwYUYSMTBFgiAH6ukxX7y3w8oEOobzEXtfCd
	igNZJGMKzFu5RPMo1rRI5jIBzZF6Dbzn/0EJxQsqnMS/YZ4AyFFbqRDzOow/1jAVKdiA
	f9NAVcMgDOHaLxDCNpcuvteCryolERU3cPtJGGeNgXBzvgoTODyCox8q8DkGjyFTvYFt
	/YTA==
MIME-Version: 1.0
X-Received: by 10.220.11.141 with SMTP id t13mr692419vct.30.1393957463544;
	Tue, 04 Mar 2014 10:24:23 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Tue, 4 Mar 2014 10:24:23 -0800 (PST)
In-Reply-To: <CAA7h+EoJq4bz+mOMOTae5MkbBHYOSJS_SEEw0R5QefAGwmdo3Q@mail.gmail.com>
References: <CAA7h+EoJq4bz+mOMOTae5MkbBHYOSJS_SEEw0R5QefAGwmdo3Q@mail.gmail.com>
Date: Tue, 4 Mar 2014 11:24:23 -0700
Message-ID: <CAA7h+EpJ6Co1D-HwQFv2Tye_rHRFe9-NpS3EHwpSPG_zFeAJEA@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Smart Package Manager Repos?
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
X-List-Received-Date: Tue, 04 Mar 2014 18:30:36 -0000
Content-Type: multipart/alternative; boundary=001a11c3c9707258bf04f3cc03ef

--001a11c3c9707258bf04f3cc03ef
Content-Type: text/plain; charset=ISO-8859-1

I figure it out. It was a DNS issue, but now I am getting the error below,
I have done a smart clean and update and still no joy.

error: Failed to download packages:
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-encode-encoding-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected 6e8b7de483da130f5c6620a92caed66e29a2ceb0, got
ecd449ea50cbf69cc81308d76c462a2e2dc7d00e)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-base-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected 097e3e641c2485ddba2c619dd1ed485fea4d5c01, got
04b11d60ecadb54b389af29952105434c2e806f7)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-encode-config-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected 64e006ee2fca2fb9c0e89c8a3839393f0575573b, got
6d29ba0fe6ef3cdaa0d1f446c1c182efd143e812)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-scalar-util-pp-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected 86a2022b74e98f5cb83ed7e485a895186bb1f667, got
903526c2376f1bf3d07f710a01ef167868dfd9b2)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-file-glob-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected 50f57e0ea443498f55f7acc1fea0ac433f4c0ca0, got
f4390874d4ab0c0a6b39e5f6b22a3c12e53f23df)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-file-compare-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected c1376a30fa0b40464c80f96e2da81995d4fd2889, got
8365006ceb44ce7cc0cc99045e94fba550c158f7)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-exporter-heavy-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected 51aae7039d20e4764f127795d391116b5dd4f00d, got
bf8548f9054106d1b632c4173cdc70efdb2c76f6)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-pod-usage-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected 425f9f58be006b0683f5ff70b0173b44bd1ba1c9, got
f00702f66bc88eaea2876ff4fe2cc2cba985e332)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-term-cap-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected ac4e134436b2c22bde9061e1e610529bbaca3fd9, got
f6564942b83ea55503a900aa12c2c6399310b772)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-scalar-util-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected ce5f2b58d4934ff6f4797a28a40ecdd8b1be794d, got
fc5c2a0f3d26db792b41d859d91f748caf67286b)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/gnu-config-20120814-r0.armv7a_vfp_neon.rpm:
Invalid SHA (expected d80d3295e9a6ab0763eb02fd5af54cb05fa5b2fb, got
24074fafdacdb40459196fc5cb471ef75afae3bf)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-file-stat-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected f4efa6300cd736d5411ffe0e211da7f86b3f9178, got
555e9a2dfe1126f102dbea0e288c2ec3bad6e2f9)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-file-path-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected f093f2a343eabed726a18140e9a535e28747983d, got
f8aa96cef551df7054e45f4f1488fb64a9c356c0)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-integer-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected 3a0cb9063f173577c164379bb4bae1322d6f8ce5, got
5280fff26cf0333fb9689f9f1d64fdbaab58560e)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-bytes-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected e6c758542bd6a964898a2f3048db792c8131eba5, got
1ec7fe6613563202d6dcf57442c092ab75836db8)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-file-spec-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected 9191bbc707885cc0ccc95a39be65b7554aa1b8df, got
d3550957059c1dac0867e0435d0cfb14c52da62c)
error:
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/perl-module-class-struct-5.14.3-r1.armv7a_vfp_neon.rpm:
Invalid SHA (expected 802c9a877459863486feee41ddb29bb426fd5a89, got
c0f413830e40e8d17b7e47bfb19df507117309e6)


On Tue, Mar 4, 2014 at 10:00 AM, Rick Bianchi <bianchirickkutta@gmail.com>wrote:

>
> I get the following erro when I run smart update. Is there another repo?
>
> error: failed acquire release file for 'gumstix package repository'
> error:
> http://package-cache.s3-website-us-west-2.amazonaws.com/dev/repodata/repomd.xml
>
>
> Thanks,
> Rick
>

--001a11c3c9707258bf04f3cc03ef
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I figure it out. It was a DNS issue, but now I am get=
ting the error below, I have done a smart clean and update and still no joy=
.<br></div><div><br></div><div>error: Failed to download packages:         =
                                                                           =
                                                                           =
                                                                           =
          <br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-encode-encoding-5.14.3-r1.armv7a_vfp_neo=
n.rpm">http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_v=
fp_neon/perl-module-encode-encoding-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Inva=
lid SHA (expected 6e8b7de483da130f5c6620a92caed66e29a2ceb0, got ecd449ea50c=
bf69cc81308d76c462a2e2dc7d00e)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-base-5.14.3-r1.armv7a_vfp_neon.rpm">http=
://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/per=
l-module-base-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid SHA (expected 097e=
3e641c2485ddba2c619dd1ed485fea4d5c01, got 04b11d60ecadb54b389af29952105434c=
2e806f7)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-encode-config-5.14.3-r1.armv7a_vfp_neon.=
rpm">http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp=
_neon/perl-module-encode-config-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid =
SHA (expected 64e006ee2fca2fb9c0e89c8a3839393f0575573b, got 6d29ba0fe6ef3cd=
aa0d1f446c1c182efd143e812)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-scalar-util-pp-5.14.3-r1.armv7a_vfp_neon=
.rpm">http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vf=
p_neon/perl-module-scalar-util-pp-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invali=
d SHA (expected 86a2022b74e98f5cb83ed7e485a895186bb1f667, got 903526c2376f1=
bf3d07f710a01ef167868dfd9b2)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-file-glob-5.14.3-r1.armv7a_vfp_neon.rpm"=
>http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neo=
n/perl-module-file-glob-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid SHA (exp=
ected 50f57e0ea443498f55f7acc1fea0ac433f4c0ca0, got f4390874d4ab0c0a6b39e5f=
6b22a3c12e53f23df)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-file-compare-5.14.3-r1.armv7a_vfp_neon.r=
pm">http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_=
neon/perl-module-file-compare-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid SH=
A (expected c1376a30fa0b40464c80f96e2da81995d4fd2889, got 8365006ceb44ce7cc=
0cc99045e94fba550c158f7)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-exporter-heavy-5.14.3-r1.armv7a_vfp_neon=
.rpm">http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vf=
p_neon/perl-module-exporter-heavy-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invali=
d SHA (expected 51aae7039d20e4764f127795d391116b5dd4f00d, got bf8548f905410=
6d1b632c4173cdc70efdb2c76f6)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-pod-usage-5.14.3-r1.armv7a_vfp_neon.rpm"=
>http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neo=
n/perl-module-pod-usage-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid SHA (exp=
ected 425f9f58be006b0683f5ff70b0173b44bd1ba1c9, got f00702f66bc88eaea2876ff=
4fe2cc2cba985e332)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-term-cap-5.14.3-r1.armv7a_vfp_neon.rpm">=
http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon=
/perl-module-term-cap-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid SHA (expec=
ted ac4e134436b2c22bde9061e1e610529bbaca3fd9, got f6564942b83ea55503a900aa1=
2c2c6399310b772)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-scalar-util-5.14.3-r1.armv7a_vfp_neon.rp=
m">http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_n=
eon/perl-module-scalar-util-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid SHA =
(expected ce5f2b58d4934ff6f4797a28a40ecdd8b1be794d, got fc5c2a0f3d26db792b4=
1d859d91f748caf67286b)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/gnu-config-20120814-r0.armv7a_vfp_neon.rpm">http://p=
ackage-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/gnu-con=
fig-20120814-r0.armv7a_vfp_neon.rpm</a>: Invalid SHA (expected d80d3295e9a6=
ab0763eb02fd5af54cb05fa5b2fb, got 24074fafdacdb40459196fc5cb471ef75afae3bf)=
<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-file-stat-5.14.3-r1.armv7a_vfp_neon.rpm"=
>http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neo=
n/perl-module-file-stat-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid SHA (exp=
ected f4efa6300cd736d5411ffe0e211da7f86b3f9178, got 555e9a2dfe1126f102dbea0=
e288c2ec3bad6e2f9)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-file-path-5.14.3-r1.armv7a_vfp_neon.rpm"=
>http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neo=
n/perl-module-file-path-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid SHA (exp=
ected f093f2a343eabed726a18140e9a535e28747983d, got f8aa96cef551df7054e45f4=
f1488fb64a9c356c0)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-integer-5.14.3-r1.armv7a_vfp_neon.rpm">h=
ttp://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/=
perl-module-integer-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid SHA (expecte=
d 3a0cb9063f173577c164379bb4bae1322d6f8ce5, got 5280fff26cf0333fb9689f9f1d6=
4fdbaab58560e)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-bytes-5.14.3-r1.armv7a_vfp_neon.rpm">htt=
p://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neon/pe=
rl-module-bytes-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid SHA (expected e6=
c758542bd6a964898a2f3048db792c8131eba5, got 1ec7fe6613563202d6dcf57442c092a=
b75836db8)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-file-spec-5.14.3-r1.armv7a_vfp_neon.rpm"=
>http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_neo=
n/perl-module-file-spec-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid SHA (exp=
ected 9191bbc707885cc0ccc95a39be65b7554aa1b8df, got d3550957059c1dac0867e04=
35d0cfb14c52da62c)<br>
error:     <a href=3D"http://package-cache.s3-website-us-west-2.amazonaws.c=
om/dev/armv7a_vfp_neon/perl-module-class-struct-5.14.3-r1.armv7a_vfp_neon.r=
pm">http://package-cache.s3-website-us-west-2.amazonaws.com/dev/armv7a_vfp_=
neon/perl-module-class-struct-5.14.3-r1.armv7a_vfp_neon.rpm</a>: Invalid SH=
A (expected 802c9a877459863486feee41ddb29bb426fd5a89, got c0f413830e40e8d17=
b7e47bfb19df507117309e6)<br>
</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">O=
n Tue, Mar 4, 2014 at 10:00 AM, Rick Bianchi <span dir=3D"ltr">&lt;<a href=
=3D"mailto:bianchirickkutta@gmail.com" target=3D"_blank">bianchirickkutta@g=
mail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><br><div>I get the followin=
g erro when I run smart update. Is there another repo?</div><div><br></div>=
<div>
error: failed acquire release file for &#39;gumstix package repository&#39;=
</div><div>error: <a href=3D"http://package-cache.s3-website-us-west-2.amaz=
onaws.com/dev/repodata/repomd.xml" target=3D"_blank">http://package-cache.s=
3-website-us-west-2.amazonaws.com/dev/repodata/repomd.xml</a></div>

<div><br></div><div><br></div><div>Thanks,</div><div>Rick</div></div>
</blockquote></div><br></div>

--001a11c3c9707258bf04f3cc03ef--
