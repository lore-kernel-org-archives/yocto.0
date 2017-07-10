Return-Path: <rafaelrodrigues.machado@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A6BCE00C35; Mon, 10 Jul 2017 06:02:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rafaelrodrigues.machado[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f41.google.com (mail-vk0-f41.google.com
	[209.85.213.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DDA8E00C32
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 06:02:11 -0700 (PDT)
Received: by mail-vk0-f41.google.com with SMTP id r126so46777529vkg.0
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 06:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Nruv1fA3xnw0X4j8aihvCsXYkDZNt777JmZfI13y7Mo=;
	b=m4FIvWlbwAYwcZE3K5aHPhWyX8U1KB6mDrsN9ZIhDKfhKKT+SAKzSQ+ZQxP9LyzV8/
	Tc5/d0O9X1rrzPIrHWkpj/HM68c43ae5NYXAXeZI8LHDM/g4c3Pm7eGAhxfAHyS/3MAK
	Qak4IF1IxUBPcPAWdimrtNR1zDTkIMtwhszd548zVxs6S5KmPP3r9B4t0015DoYG+L8t
	2SaodqOnQ/lOy+tpjrhczhssjAt3LfqZFgqNJiltkA/rdoBoj+t0bnxBmvVd36rm7yd/
	7AjR5nAJ9ocMNfKo/89AKY0O2k5+OhHkeIok6jedW3fYTsXZq3wJbzgsvaNe3qhq6+n3
	qf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Nruv1fA3xnw0X4j8aihvCsXYkDZNt777JmZfI13y7Mo=;
	b=OAzXtbYQfqdPQ2BL7h8mP4LadKCXuUCCfzVgYp8CY984eqtO0fbQzNvo+kklhqqFnn
	UZLREnOoAPLAvYNsfh7NW4JmKxA6m2dLlO91ZHtBumXnuWZa+pvYHJzNK58Zn7oCA5+l
	/vE4j66pUeh2ylIMd4JacTMaqofn1uRGKDpOwW3pxyCyiBw1fyuXUuA/zhGOVK5n7s5h
	BnV6/L2cuCnsPStVEuASBKcfcc6V0K6CN6agOdUU0f7vAxEOelvGdo5+ClVktkqwvZ7R
	8ndy6ZuYFxC0jOeqBppUMEt2F+odC8XmDCabXR/W77JRxuRMmTcrkHS37dfKOSUI44jW
	sk0A==
X-Gm-Message-State: AIVw110lN+qZt/GVE0x35N933a1Ucc16y+BNclMA6kVU58mc55zvU3NH
	JwdQrmFfdKofZOgNe02PC1JiFWbntw==
X-Received: by 10.31.69.82 with SMTP id s79mr6881479vka.118.1499691730561;
	Mon, 10 Jul 2017 06:02:10 -0700 (PDT)
MIME-Version: 1.0
References: <CACgnt7-ZUQ4FKiU4iBG9Lxym8SjWRR5GSPtmu4pULozHo_45-w@mail.gmail.com>
	<CAJTo0LZTW=+yzdSebDbKKd2QuSS91HXAPHRPcg6Z5e=WMMKOEg@mail.gmail.com>
	<CACgnt7-BsX1EkCnMj8T=tFqguhCNRWrrTgsG4ai3nR213SiFqA@mail.gmail.com>
	<CAJTo0LZyvY=u_ctNYFpkS3ay11p5REti3UgLJDfOaAWyRLpZaQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZyvY=u_ctNYFpkS3ay11p5REti3UgLJDfOaAWyRLpZaQ@mail.gmail.com>
From: Rafael Machado <rafaelrodrigues.machado@gmail.com>
Date: Mon, 10 Jul 2017 13:01:59 +0000
Message-ID: <CACgnt79wC_x1i1_oxn_xff8onutBWYQ1VEVEPYkW5GW-7OJdmg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto build at Kali
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
X-List-Received-Date: Mon, 10 Jul 2017 13:02:12 -0000
Content-Type: multipart/alternative; boundary="001a114db0bcdf6fab0553f630a2"

--001a114db0bcdf6fab0553f630a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The only place I was able to check this information was at the
ChangeLog file inside the bitbake tree on the BSP package:

"Changes in Bitbake 1.9.x:
        - Add PE (Package Epoch) support from Philipp Zabel (pH5)
        - Treat python functions the same as shell functions for logging
        - Use TMPDIR/anonfunc as a __anonfunc temp directory (T)
        - Catch truncated cache file errors
        - Allow operations other than assignment on flag variables
        - Add code to handle inter-task dependencies
        - Fix cache errors when generation dotGraphs
        - Make sure __inherit_cache is updated before calling include()
(from Michael Krelin)
        - Fix bug when target was in ASSUME_PROVIDED (#2236)
        ...
"

Thanks for the Help
Rafael R. Machado

Em seg, 10 de jul de 2017 =C3=A0s 09:47, Burton, Ross <ross.burton@intel.co=
m>
escreveu:

>
> On 10 July 2017 at 13:38, Rafael Machado <
> rafaelrodrigues.machado@gmail.com> wrote:
>
>>     from . import _html5lib
>>   File
>> "/home/rafael/Projetos/seco/poky/bitbake/lib/bs4/builder/_html5lib.py",
>> line 57, in <module>
>>     class TreeBuilderForHtml5lib(html5lib.treebuilders._base.TreeBuilder=
):
>> AttributeError: 'module' object has no attribute '_base'
>>
>
> That's the actual error.  What version of oe-core/bitbake does this BSP
> use?
>
> Ross
>

--001a114db0bcdf6fab0553f630a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The only place I was able to check this information was at=
 the=C2=A0<div>ChangeLog file inside the bitbake tree on the BSP package:<d=
iv><br></div><div>&quot;<font color=3D"#24292e" face=3D"SFMono-Regular, Con=
solas, Liberation Mono, Menlo, Courier, monospace"><span style=3D"font-size=
:11.9px">Changes in Bitbake 1.9.x:</span></font></div><div><font color=3D"#=
24292e" face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, =
monospace"><span style=3D"font-size:11.9px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 - A=
dd PE (Package Epoch) support from Philipp Zabel (pH5)</span></font></div><=
div><font color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberation Mo=
no, Menlo, Courier, monospace"><span style=3D"font-size:11.9px">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 - Treat python functions the same as shell functions for =
logging</span></font></div><div><font color=3D"#24292e" face=3D"SFMono-Regu=
lar, Consolas, Liberation Mono, Menlo, Courier, monospace"><span style=3D"f=
ont-size:11.9px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Use TMPDIR/anonfunc as a __a=
nonfunc temp directory (T)</span></font></div><div><font color=3D"#24292e" =
face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospac=
e"><span style=3D"font-size:11.9px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Catch tru=
ncated cache file errors</span></font></div><div><font color=3D"#24292e" fa=
ce=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace"=
><span style=3D"font-size:11.9px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Allow opera=
tions other than assignment on flag variables</span></font></div><div><font=
 color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo=
, Courier, monospace"><span style=3D"font-size:11.9px">=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 - Add code to handle inter-task dependencies</span></font></div><di=
v><font color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberation Mono=
, Menlo, Courier, monospace"><span style=3D"font-size:11.9px">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 - Fix cache errors when generation dotGraphs</span></font></=
div><div><font color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberati=
on Mono, Menlo, Courier, monospace"><span style=3D"font-size:11.9px">=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 - Make sure __inherit_cache is updated before calling=
 include() (from Michael Krelin)</span></font></div><div><font color=3D"#24=
292e" face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, mo=
nospace"><span style=3D"font-size:11.9px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Fix=
 bug when target was in ASSUME_PROVIDED (#2236)</span></font></div><div><fo=
nt color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberation Mono, Men=
lo, Courier, monospace"><span style=3D"font-size:11.9px">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ...</span></font></div><div>&quot;</div><div><br></div><div>Than=
ks for the Help</div><div>Rafael R. Machado</div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">Em seg, 10 de jul de 2017 =C3=A0s 09:47, =
Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel=
.com</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 10 July 2=
017 at 13:38, Rafael Machado <span dir=3D"ltr">&lt;<a href=3D"mailto:rafael=
rodrigues.machado@gmail.com" target=3D"_blank">rafaelrodrigues.machado@gmai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>=C2=A0 =
=C2=A0 from . import _html5lib</div><div>=C2=A0 File &quot;/home/rafael/Pro=
jetos/seco/poky/bitbake/lib/bs4/builder/_html5lib.py&quot;, line 57, in &lt=
;module&gt;</div><div>=C2=A0 =C2=A0 class TreeBuilderForHtml5lib(html5lib.t=
reebuilders._base.TreeBuilder):</div><div>AttributeError: &#39;module&#39; =
object has no attribute &#39;_base&#39;</div><div></div></blockquote></div>=
<br></div></div><div dir=3D"ltr"><div class=3D"gmail_extra">That&#39;s the =
actual error.=C2=A0 What version of oe-core/bitbake does this BSP use?</div=
></div><div dir=3D"ltr"><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">Ross</div></div></blockquote></div>

--001a114db0bcdf6fab0553f630a2--
