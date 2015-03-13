Return-Path: <p_j_r_m@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C093E00754; Fri, 13 Mar 2015 16:16:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (p_j_r_m[at]yahoo.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.82.96.135 listed in list.dnswl.org]
Received: from nm8-vm1.bullet.mail.ir2.yahoo.com
	(nm8-vm1.bullet.mail.ir2.yahoo.com [212.82.96.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84729E003A8
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 16:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1426288591; bh=/53m8lXsuJ91HnBve98L01aIz5PwQhWuElZLg8DxZ+k=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=cYckwMONdEsbgeJUa1grsW+kgi52/3lK/jzfpoHIQfyEzO58Ftn5jqbGbb7y8HYUqfKFA6nFtRhi2kh2tne+ZJHUGXZ0TpbpiIupQBfkTwPnLVhwsBXm/5V9XPREwO6rCE/714atAfs1M0R4OSwW2AdB/RrpQP3YRLN5n5URAZjVc3AcgAizBYFLCmX7A4aLT5lCADqJ65aV0XCqeYzTj+tpprEuywjho+EDJwh/aI50gffGB+ePf7YBfvd0nOx0xpplWr1Vxz7IYppI4CxtgakvCR8w+Xz5kCKxtlE9dCQ31ZsBoTFpQUb8/ZaxhoIpfkbppysINd8LSayvkH7xDQ==
Received: from [212.82.98.49] by nm8.bullet.mail.ir2.yahoo.com with NNFMP;
	13 Mar 2015 23:16:31 -0000
Received: from [212.82.98.109] by tm2.bullet.mail.ir2.yahoo.com with NNFMP;
	13 Mar 2015 23:16:31 -0000
Received: from [127.0.0.1] by omp1046.mail.ir2.yahoo.com with NNFMP;
	13 Mar 2015 23:16:31 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 305268.33847.bm@omp1046.mail.ir2.yahoo.com
X-YMail-OSG: uABfpSkVM1mbYinwDtxLPJOMLQC4pnX5qeKtj3AsP._ayZGMFGSITY8JFehpuP2
	u.86nVe2pBu3GLbDvRYt59Jp95_NIi0NIs5w_zWsxh.O.A.SQYtSkSj94MnwYCDDdFBm1A371okh
	s2HQHk8Rdd7GPQmQzyu1nHsmvPhFlqQjs1emihw4YvqLRhwk5.CG7xMxkPClHDgtB3DMEzxY3C4M
	GatQRjQcM8IyMaqiu0APdb5ycCB5_pI9JAKib3x2L3Z9kjPj8KufEZJjGg7i4eWj3T.9HamKjFNB
	zFGDHc2LMSyan90dtC4WLmK_yTk8vRU.FFnAbO0ltZSRdCCvafZZwCPD6jXuCUpLcJVrH8hbUq74
	8ys5yrqZUdEZ6vT0V7vBhKLOVD8jOIYJrxMQa3y_wSdC.nQjC6BtWlO77mWW_ld0w30hKjuRNsLm
	NmIoMnjd2._gqeMggWnlKeFkjiAOQbV0W909yyCxllgtPY4j4acfU0H7GuGzC4aOjGT9sm8cyh1h
	TzndzBi48ojn475qj3nTmF_7VOtBx6o05nIab4CfoEbr4IsXpKef3qzg-
Received: by 217.12.9.14; Fri, 13 Mar 2015 23:16:30 +0000 
Date: Fri, 13 Mar 2015 23:16:30 +0000 (UTC)
From: p_j_r_m <p_j_r_m@yahoo.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <853683642.3620249.1426288590548.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1637612.gAra2p1qXC@peggleto-mobl5.ger.corp.intel.com>
References: <1637612.gAra2p1qXC@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: File in append recipe not installed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: p_j_r_m <p_j_r_m@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Mar 2015 23:16:36 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_3620248_608800704.1426288590546"

------=_Part_3620248_608800704.1426288590546
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


Thanks for your suggestionsThe problem was that my recipe files were taken =
from sstate directories, even when they were previously cleaned with bitbak=
e -c clean. If I use -c cleansstate instead, all is ok . =20

     El Viernes 13 de marzo de 2015 9:17, Paul Eggleton <paul.eggleton@linu=
x.intel.com> escribi=C3=B3:
  =20

 On Thursday 12 March 2015 18:01:16 Gary Thomas wrote:
> On 2015-03-12 17:21, p_j_r_m wrote:
> > I've tested it, but the problem is the same.
> > My bbappend recipe is not even called ,so it does not matter what i put=
 in
> > it. Why is not called?
>
> Please don't top-post :-(
>=20
> How do you know that your bbappend isn't being used/called?=C2=A0 If you =
name it
> incorrectly, e.g. base-files_3.0.99.bbappend, you should get an error
> telling you that there is no base-files_3.0.99.bb which matches.=C2=A0 He=
nce if
> it's named base-files_3.0.14.bbappend and you get no error, it *is* being
> used.
>=20
> Please show exactly what is now in your layer (as below).=C2=A0 It's real=
ly easy
> to make a mistake with a '_' instead of '-'.

Also, one way to tell for sure whether it is being parsed is to use:

=C2=A0 bitbake-layers show-appends=20

If it's not listed there, check that the layer shows up in:

=C2=A0 bitbake-layers show-layers

If the layer doesn't show there, check if it has been correctly added to=20
bblayers.conf. If it is, check that your layer.conf is setting BBFILES such=
=20
that bbappends in the directory you placed the bbappend in will be picked u=
p.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre


   

------=_Part_3620248_608800704.1426288590546
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue-Light, Helvetica Neue Light, Helvetica Neue, Helvetica, Arial, =
Lucida Grande, sans-serif;font-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0=
_1_1426057378008_194047"><br><span style=3D"" class=3D"" id=3D"yui_3_16_0_1=
_1426057378008_194548">Thanks for your suggestions</span></div><div id=3D"y=
ui_3_16_0_1_1426057378008_197722" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1426=
057378008_194548">The problem was that my recipe files were taken from ssta=
te directories, even when they were previously cleaned with bitbake -c clea=
n. If I use -c cleansstate instead, all is ok . </span></div> <div class=3D=
"qtdSeparateBR"><br><br></div><div style=3D"display: block;" class=3D"yahoo=
_quoted"> <div style=3D"font-family: HelveticaNeue-Light, Helvetica Neue Li=
ght, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size=
: 16px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helveti=
ca, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"> =
<font size=3D"2" face=3D"Arial"> El Viernes 13 de marzo de 2015 9:17, Paul =
Eggleton &lt;paul.eggleton@linux.intel.com&gt; escribi=C3=B3:<br> </font> <=
/div>  <br><br> <div class=3D"y_msg_container">On Thursday 12 March 2015 18=
:01:16 Gary Thomas wrote:<div class=3D"yqt0378109637" id=3D"yqtfd78709"><br=
 clear=3D"none">&gt; On 2015-03-12 17:21, p_j_r_m wrote:<br clear=3D"none">=
&gt; &gt; I've tested it, but the problem is the same.<br clear=3D"none">&g=
t; &gt; My bbappend recipe is not even called ,so it does not matter what i=
 put in<br clear=3D"none">&gt; &gt; it. Why is not called?<br clear=3D"none=
">&gt;<br clear=3D"none">&gt; Please don't top-post :-(<br clear=3D"none">&=
gt; <br clear=3D"none">&gt; How do you know that your bbappend isn't being =
used/called?&nbsp; If you name it<br clear=3D"none">&gt; incorrectly, e.g. =
base-files_3.0.99.bbappend, you should get an error<br clear=3D"none">&gt; =
telling you that there is no base-files_3.0.99.bb which matches.&nbsp; Henc=
e if<br clear=3D"none">&gt; it's named base-files_3.0.14.bbappend and you g=
et no error, it *is* being<br clear=3D"none">&gt; used.<br clear=3D"none">&=
gt; <br clear=3D"none">&gt; Please show exactly what is now in your layer (=
as below).&nbsp; It's really easy<br clear=3D"none">&gt; to make a mistake =
with a '_' instead of '-'.</div><br clear=3D"none"><br clear=3D"none">Also,=
 one way to tell for sure whether it is being parsed is to use:<br clear=3D=
"none"><br clear=3D"none">&nbsp; bitbake-layers show-appends <br clear=3D"n=
one"><br clear=3D"none">If it's not listed there, check that the layer show=
s up in:<br clear=3D"none"><br clear=3D"none">&nbsp; bitbake-layers show-la=
yers<br clear=3D"none"><br clear=3D"none">If the layer doesn't show there, =
check if it has been correctly added to <br clear=3D"none">bblayers.conf. I=
f it is, check that your layer.conf is setting BBFILES such <br clear=3D"no=
ne">that bbappends in the directory you placed the bbappend in will be pick=
ed up.<br clear=3D"none"><br clear=3D"none">Cheers,<br clear=3D"none">Paul<=
br clear=3D"none"><br clear=3D"none">-- <br clear=3D"none"><br clear=3D"non=
e">Paul Eggleton<br clear=3D"none">Intel Open Source Technology Centre<div =
class=3D"yqt0378109637" id=3D"yqtfd15063"><br clear=3D"none"></div><br><br>=
</div>  </div> </div>  </div> </div></body></html>

------=_Part_3620248_608800704.1426288590546--
