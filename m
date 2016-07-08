Return-Path: <sambaran.mail@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 759AFE0049A; Fri,  8 Jul 2016 09:19:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sambaran.mail[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D4EFE0043B
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 09:19:27 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id w59so23387419qtd.3
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 09:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=KAuisMZ+GmTotkTyVHPBba9BQFRf35RyfemDCIvDM18=;
	b=SY74AH1/f2BwochCEDv139X8Tju9Xn67HXGscMfDgev7u4i0dcOnEvxxOgPflaIdBi
	oPbu2sWQsaiztKnNB1TKURWmwNzV7qxGunnIcZkYNMlnlCrMV2s/YbVEcVo4H22oCGx2
	FAcdWcb4wQc7ocO09C/9aqKP01nCGx8nTgm9EeWjr0nq2pG16ALZed8pEIvIlZM1U4WZ
	SRr40Z+P45dMLpUiQ8oNHIjo593xHGIt1KE71f/RUaqvVE7hZNX5Oj6AoDJFay1wRWPk
	iowdZV/B7TA1kiQSUPGuhK+GSCgGBSjFGbFMCoa2TkgdnegRVn2GUdPV41IGVWC/i3S5
	spBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=KAuisMZ+GmTotkTyVHPBba9BQFRf35RyfemDCIvDM18=;
	b=UVF8eQXjL4A3NS3XNLh1z9YNCUNqiw3N8e/zs4WtMBQv3vfYcLk4NNV6bnUrQ6fL31
	tokHSExqjYB3KA01kMDTFPPCRubNm8idGkg0ZwSgUw59BRWKJg7QFJ1HUx2etllfzlJq
	Pc8b0twETMf4BxuJLxwRu50T+gLfPkyy6rWbNCk+1JkNaqbrpobXkYutSMDFE7U5v2uj
	D3O9okaUQEypcPUpu+qMJpT1GG3mT8H1mYLJWvMO9uZiE7EXtwd1g0GE7rrSd2k57CMl
	LXfX7AddA3LiOYNeDg5PNCnishQNY0y4MxIL1BXo8e3Zp7UmaEjuhrHF6dPxQl7Qy0eq
	rqog==
X-Gm-Message-State: ALyK8tJ3LxsMKb0WcORb8byV6eGaVxJ2hPefe9tcltB39+ummIxe3cvfYHsJwJiJ+5rGDm6wVRynCz1GOhD2HA==
X-Received: by 10.200.40.88 with SMTP id 24mr9519931qtr.73.1467994766788; Fri,
	08 Jul 2016 09:19:26 -0700 (PDT)
MIME-Version: 1.0
References: <CADXrkTNJDZ_hgu_WNXOamSFE_iQcudB6G0Y8cB_coe0WFfM7Hw@mail.gmail.com>
	<D3A54D5C.80A25%belen.barros.pena@intel.com>
In-Reply-To: <D3A54D5C.80A25%belen.barros.pena@intel.com>
From: Sambaran Ghosh <sambaran.mail@gmail.com>
Date: Fri, 08 Jul 2016 16:19:17 +0000
Message-ID: <CADXrkTMi+kVXMudSTH9ms+_SKxZDnec4tkSLVPEKZMmvoDa=CQ@mail.gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Toaster build fails on Master branch Yocto
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
X-List-Received-Date: Fri, 08 Jul 2016 16:19:30 -0000
Content-Type: multipart/alternative; boundary=001a11414c549b567a0537222a53

--001a11414c549b567a0537222a53
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Very helpful. Thanks a lot

On Fri, Jul 8, 2016, 5:06 PM Barros Pena, Belen <belen.barros.pena@intel.co=
m>
wrote:

> Hi Sambaran,
>
> On 07/07/2016 10:43, "yocto-bounces@yoctoproject.org on behalf of Sambara=
n
> Ghosh" <yocto-bounces@yoctoproject.org on behalf of
> sambaran.mail@gmail.com> wrote:
>
> >While creating a toaster project with the Master Yocto branch,  build
> >always fails. But if I select Krogoth or Jethro branch then builds
> >succeeds. The major problem with sub-branches like Krogoth is that there
> >few layers supported. Is everyone having
> > similar problem?
>
> If you are using the Krogoth release of Yocto Project, Toaster will no
> longer build the master branch. The project as a whole has migrated to
> python3, and that has broken compatibility between Krogoth and master. So
> with the Toaster from Krogoth you will only be able to build krogoth and
> jethro.
>
> >And do you have any solution?
>
> There is, although it is a bit clunky. You will need to manually import
> any layers you want to build into your krogoth Toaster project. In the
> project page, select the "import layer" tab, and fill the git repository
> information, which you can get from https://layers.yoctoproject.org. As
> the revision, enter "master".
>
> That will add the layer to the list of compatible layers for the project,
> and add it to the project configuration, so that you can build recipes
> from it.
>
> I hope this helps.
>
> Cheers
>
> Bel=C3=A9n
>
>
> >
>
>

--001a11414c549b567a0537222a53
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Very helpful. Thanks a lot</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Jul 8, 2016, 5:06 P=
M Barros Pena, Belen &lt;<a href=3D"mailto:belen.barros.pena@intel.com">bel=
en.barros.pena@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">Hi Sambaran,<br>
<br>
On 07/07/2016 10:43, &quot;<a href=3D"mailto:yocto-bounces@yoctoproject.org=
" target=3D"_blank">yocto-bounces@yoctoproject.org</a> on behalf of Sambara=
n<br>
Ghosh&quot; &lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D=
"_blank">yocto-bounces@yoctoproject.org</a> on behalf of<br>
<a href=3D"mailto:sambaran.mail@gmail.com" target=3D"_blank">sambaran.mail@=
gmail.com</a>&gt; wrote:<br>
<br>
&gt;While creating a toaster project with the Master Yocto branch,=C2=A0 bu=
ild<br>
&gt;always fails. But if I select Krogoth or Jethro branch then builds<br>
&gt;succeeds. The major problem with sub-branches like Krogoth is that ther=
e<br>
&gt;few layers supported. Is everyone having<br>
&gt; similar problem?<br>
<br>
If you are using the Krogoth release of Yocto Project, Toaster will no<br>
longer build the master branch. The project as a whole has migrated to<br>
python3, and that has broken compatibility between Krogoth and master. So<b=
r>
with the Toaster from Krogoth you will only be able to build krogoth and<br=
>
jethro.<br>
<br>
&gt;And do you have any solution?<br>
<br>
There is, although it is a bit clunky. You will need to manually import<br>
any layers you want to build into your krogoth Toaster project. In the<br>
project page, select the &quot;import layer&quot; tab, and fill the git rep=
ository<br>
information, which you can get from <a href=3D"https://layers.yoctoproject.=
org" rel=3D"noreferrer" target=3D"_blank">https://layers.yoctoproject.org</=
a>. As<br>
the revision, enter &quot;master&quot;.<br>
<br>
That will add the layer to the list of compatible layers for the project,<b=
r>
and add it to the project configuration, so that you can build recipes<br>
from it.<br>
<br>
I hope this helps.<br>
<br>
Cheers<br>
<br>
Bel=C3=A9n<br>
<br>
<br>
&gt;<br>
<br>
</blockquote></div>

--001a11414c549b567a0537222a53--
