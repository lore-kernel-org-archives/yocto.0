Return-Path: <jkrishnanjanappa@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E5C5E00AE4; Tue, 18 Aug 2015 20:16:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B24A6E00ADB
	for <yocto@yoctoproject.org>; Tue, 18 Aug 2015 20:16:05 -0700 (PDT)
Received: by iodv127 with SMTP id v127so196857061iod.3
	for <yocto@yoctoproject.org>; Tue, 18 Aug 2015 20:16:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=1Rn2jR4cv+nRJ8E5vdUTCuJS/Ukq9dGSEVuApaYpFRs=;
	b=QxNU2bTkS6ynjfb2Ogw3bEnmAx2kVXKmDqaOixufPhYahR5CHsjfNvtJfLTzo4gPMl
	gSkgwO5p4fCyTSOSquwk2CO7bveQFoU3emo2KZLES4fwNR3StzSdoFq5q8S46MkM7fkz
	vBKyeLJPttQL0RtUvyheln8a90B71X3303yieAeF+XPfwcAHTYii1t8eersB0tiGjp7d
	bFfkLVdaZTy283SXBhxVoAsWfPt+0W46xBllfWYg9Goy1g0CqYOCtzfyPMcOY5QM0K2w
	uRANWIdEc0taDtKZt8v1h0gzqKWCNrt7HSvpkTcZv4wlBPJjHn3lOSgmacghZarKusYk
	OhsA==
X-Gm-Message-State: ALoCoQmEzeigmOLMHs78u2eTqwtQCKYItB+9bUSn2AaLFmVosuKbdX9A0ywaBWnCnr0REAOhEavo
MIME-Version: 1.0
X-Received: by 10.107.132.146 with SMTP id o18mr10115455ioi.134.1439954164476; 
	Tue, 18 Aug 2015 20:16:04 -0700 (PDT)
Received: by 10.79.13.8 with HTTP; Tue, 18 Aug 2015 20:16:04 -0700 (PDT)
In-Reply-To: <1439951854-8455-1-git-send-email-lixin.fnst@cn.fujitsu.com>
References: <1439951854-8455-1-git-send-email-lixin.fnst@cn.fujitsu.com>
Date: Wed, 19 Aug 2015 08:46:04 +0530
Message-ID: <CAD3vsf7ypEpGCErQ6fqqmY2qSVLb+pB9DzG1qbP=o3_N=7QMqw@mail.gmail.com>
From: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
To: Li xin <lixin.fnst@cn.fujitsu.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-cgl][PATCH] cluster-glue: upgrade 1.0.5 -> 1.0.12
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
X-List-Received-Date: Wed, 19 Aug 2015 03:16:08 -0000
Content-Type: multipart/alternative; boundary=001a113f33ca777f2a051da1745d

--001a113f33ca777f2a051da1745d
Content-Type: text/plain; charset=UTF-8

Hi Li,

-FILES_${PN}-dbg += "/usr/lib/heartbeat/.debug/"
> +FILES_${PN}-dbg += "/usr/lib/heartbeat/.debug/ \
> +                   "
> +FILES_${PN}-plugin-compress = "/usr/lib/heartbeat/plugins/compress/*.so"
> +FILES_${PN}-plugin-compress-staticdev =
> "/usr/lib/heartbeat/plugins/compress/*.*a"
> +FILES_${PN}-plugin-compress-dbg =
> "/usr/lib/heartbeat/plugins/compress/.debug/"
>
>  FILES_${PN}-plugin-test = "/usr/lib/heartbeat/plugins/test/test.so"
>  FILES_${PN}-plugin-test-staticdev =
> "/usr/lib/heartbeat/plugins/test/test.*a"
>

It would be useful to replace the hardcoded strings such as "/usr/lib" to
${libdir} , in order to avoid QA warnings/errors which arise while buidling
cluster-glue for multilib or if BASELIB is set to other than "lib"

Example:
-- snip --
ERROR: QA Issue: cluster-glue: Files/directories were installed but not
shipped
in any package:
  /usr/lib64/libstonith.so.1.0.0
  /usr/lib64/libplumb.so.2
  /usr/lib64/libpils.so.2
  /usr/lib64/libplumb.so.2.0.0
  /usr/lib64/libpils.so.2.0.0
  /usr/lib64/liblrm.so.2
  /usr/lib64/libstonith.so.1
  /usr/lib64/libplumbgpl.so.2
  /usr/lib64/libplumbgpl.so.2.0.0
  /usr/lib64/liblrm.so.2.0.0
-- CUT --

Also, If bitbake fails to find these files not being provided by
any RPMs/DPKs, then we get below error during do_rootfs;

-- snip --
ERROR: Unable to install packages. Command
'/opt/poky/build/tmp/sysroots/x86_64-linux/usr/bin/smart
--log-level=warning
--data-dir=/opt/poky/build/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs/var/lib/smart
install -y cluster-glue@core2_64 run-postinsts@all
packagegroup-core-boot@qemux86_64' returned 1:
Loading cache...
Updating cache...               ########################################
[100%]

Computing transaction...error: Can't install cluster-glue-1.0.5-r0@core2_64:
no
package provides libstonith.so.1()(64bit)
-- CUT --

Regards,
Jagadeesh

_______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113f33ca777f2a051da1745d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div=
>Hi Li,=C2=A0</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
-FILES_${PN}-dbg +=3D &quot;/usr/lib/heartbeat/.debug/&quot;<br>
+FILES_${PN}-dbg +=3D &quot;/usr/lib/heartbeat/.debug/ \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot=
;<br>
+FILES_${PN}-plugin-compress =3D &quot;/usr/lib/heartbeat/plugins/compress/=
*.so&quot;<br>
+FILES_${PN}-plugin-compress-staticdev =3D &quot;/usr/lib/heartbeat/plugins=
/compress/*.*a&quot;<br>
+FILES_${PN}-plugin-compress-dbg =3D &quot;/usr/lib/heartbeat/plugins/compr=
ess/.debug/&quot;<br>
<br>
=C2=A0FILES_${PN}-plugin-test =3D &quot;/usr/lib/heartbeat/plugins/test/tes=
t.so&quot;<br>
=C2=A0FILES_${PN}-plugin-test-staticdev =3D &quot;/usr/lib/heartbeat/plugin=
s/test/test.*a&quot;<br></blockquote><div><br></div><div>It would be useful=
 to replace the hardcoded strings such as &quot;/usr/lib&quot; to ${libdir}=
 , in order to avoid QA warnings/errors which arise while buidling</div><di=
v>cluster-glue for multilib or if BASELIB is set to other than &quot;lib&qu=
ot;</div><div><br></div><div>Example:</div><div><div>-- snip --</div><div>E=
RROR: QA Issue: cluster-glue: Files/directories were installed but not ship=
ped</div><div>in any package:</div><div>=C2=A0 /usr/lib64/libstonith.so.1.0=
.0</div><div>=C2=A0 /usr/lib64/libplumb.so.2</div><div>=C2=A0 /usr/lib64/li=
bpils.so.2</div><div>=C2=A0 /usr/lib64/libplumb.so.2.0.0</div><div>=C2=A0 /=
usr/lib64/libpils.so.2.0.0</div><div>=C2=A0 /usr/lib64/liblrm.so.2</div><di=
v>=C2=A0 /usr/lib64/libstonith.so.1</div><div>=C2=A0 /usr/lib64/libplumbgpl=
.so.2</div><div>=C2=A0 /usr/lib64/libplumbgpl.so.2.0.0</div><div>=C2=A0 /us=
r/lib64/liblrm.so.2.0.0</div></div><div>-- CUT --</div><div><br></div><div>=
<div>Also, If bitbake fails to find these files not being provided by</div>=
<div>any RPMs/DPKs, then we get below error during do_rootfs;</div><div><br=
></div><div>-- snip --</div><div>ERROR: Unable to install packages. Command=
 &#39;/opt/poky/build/tmp/sysroots/x86_64-linux/usr/bin/smart --log-level=
=3Dwarning --data-dir=3D/opt/poky/build/tmp/work/qemux86_64-poky-linux/core=
-image-minimal/1.0-r0/rootfs/var/lib/smart install -y cluster-glue@core2_64=
 run-postinsts@all packagegroup-core-boot@qemux86_64&#39; returned 1:</div>=
<div>Loading cache...</div><div>Updating cache... =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ######################################## [100%]</d=
iv><div><br></div><div>Computing transaction...error: Can&#39;t install clu=
ster-glue-1.0.5-r0@core2_64: no</div><div>package provides libstonith.so.1(=
)(64bit)</div><div>-- CUT --</div></div><div><br></div><div>Regards,</div><=
div>Jagadeesh=C2=A0</div><div><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><spa=
n class=3D"HOEnZb"><font color=3D"#888888">
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div></div>

--001a113f33ca777f2a051da1745d--
