Return-Path: <senturkmurat1999@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C5ACC41513
	for <webhook@archiver.kernel.org>; Thu,  3 Aug 2023 16:01:59 +0000 (UTC)
Subject: Re: How to migrate an older version of Yocto?
To: yocto@lists.yoctoproject.org
From: "msenturk" <senturkmurat1999@gmail.com>
X-Originating-Location: Ankara, TR (78.175.234.176)
X-Originating-Platform: Windows Firefox 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 03 Aug 2023 09:01:52 -0700
References: <CANNYZj9jXxo9EhP-NcUs5vY+rF1zcExqN8rwQmEqvJc=hFFC2w@mail.gmail.com>
In-Reply-To: <CANNYZj9jXxo9EhP-NcUs5vY+rF1zcExqN8rwQmEqvJc=hFFC2w@mail.gmail.com>
Message-ID: <27848.1691078512692144168@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rTOM5bEEBnJLcOGNz0I2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Aug 2023 16:01:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60708

--rTOM5bEEBnJLcOGNz0I2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am currently trying to build a custom Linux for Zedboard. Supported Yocto=
 versions are limited for Xilinx: https://xilinx-wiki.atlassian. net/wiki/s=
paces/A/pages/188418 83/Yocto ( https://xilinx-wiki.atlassian.net/wiki/spac=
es/A/pages/18841883/Yocto ). I chose Gatesgarth because It has more recipes=
 than Honister. And there is no meta-xilinx layer for Langdale. I followed =
two tutorials I found on Youtube. The first one using a Zedboard: https://y=
outu.be/XPnmB-THjiY and the second one using Zybo Board: https://youtu.be/F=
MCfn0zwhaQ. I built an Image, formatted an sd card, copy the files, inserte=
d the sd card to the Zedboard and turn on the power. But, it didn't boot. T=
here is no single message on Putty terminal. After some research, I found t=
he same situation for ZC702 board: https://stackoverflow.com/ques tions/680=
98124/zc702-not-booti ng-up-my-yocto-created-build ( https://stackoverflow.=
com/questions/68098124/zc702-not-booting-up-my-yocto-created-build ). So,no=
w I want to try the Zeus version. At least, I found a tutorial for Zeus: ht=
tps://pcotret.github.io/yoct o-zedboard-101/ ( https://pcotret.github.io/yo=
cto-zedboard-101/ ).

--rTOM5bEEBnJLcOGNz0I2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am currently trying to build a custom Linux for Zedboard. Supported Yocto=
 versions are limited for Xilinx: <a href=3D"https://xilinx-wiki.atlassian.=
net/wiki/spaces/A/pages/18841883/Yocto" target=3D"_blank" rel=3D"noopener n=
oreferrer" data-saferedirecturl=3D"https://www.google.com/url?q=3Dhttps://x=
ilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841883/Yocto&amp;source=3Dgm=
ail&amp;ust=3D1691164846540000&amp;usg=3DAOvVaw0okG0FHtLiU0mxaY7eng2K">http=
s://xilinx-wiki.atlassian.<wbr />net/wiki/spaces/A/pages/188418<wbr />83/Yo=
cto</a>. I chose Gatesgarth because It has more recipes than Honister. And =
there is no meta-xilinx layer for Langdale. I followed two tutorials I foun=
d on Youtube. The first one using a Zedboard: <a href=3D"https://youtu.be/X=
PnmB-THjiY" target=3D"_blank" rel=3D"noopener noreferrer" data-saferedirect=
url=3D"https://www.google.com/url?q=3Dhttps://youtu.be/XPnmB-THjiY&amp;sour=
ce=3Dgmail&amp;ust=3D1691164846540000&amp;usg=3DAOvVaw1P6lTLUeBnrhM0SVoksdt=
t">https://youtu.be/XPnmB-THjiY</a> and the second one using Zybo Board: <a=
 href=3D"https://youtu.be/FMCfn0zwhaQ" target=3D"_blank" rel=3D"noopener no=
referrer" data-saferedirecturl=3D"https://www.google.com/url?q=3Dhttps://yo=
utu.be/FMCfn0zwhaQ&amp;source=3Dgmail&amp;ust=3D1691164846540000&amp;usg=3D=
AOvVaw3VfF_nXqtO67SkNuy9Ngwu">https://youtu.be/FMCfn0zwhaQ</a>. I built an =
Image, formatted an sd card, copy the files, inserted the sd card to the Ze=
dboard and turn on the power. But, it didn't boot. There is no single messa=
ge on Putty terminal. After some research, I found the same situation for Z=
C702 board: <a href=3D"https://stackoverflow.com/questions/68098124/zc702-n=
ot-booting-up-my-yocto-created-build" target=3D"_blank" rel=3D"noopener nor=
eferrer" data-saferedirecturl=3D"https://www.google.com/url?q=3Dhttps://sta=
ckoverflow.com/questions/68098124/zc702-not-booting-up-my-yocto-created-bui=
ld&amp;source=3Dgmail&amp;ust=3D1691164846540000&amp;usg=3DAOvVaw2nenL2YbGF=
gk7DQgHxLnGi">https://stackoverflow.com/ques<wbr />tions/68098124/zc702-not=
-booti<wbr />ng-up-my-yocto-created-build</a>. So,now I want to try the Zeu=
s version. At least, I found a tutorial for Zeus: <a href=3D"https://pcotre=
t.github.io/yocto-zedboard-101/" target=3D"_blank" rel=3D"noopener noreferr=
er" data-saferedirecturl=3D"https://www.google.com/url?q=3Dhttps://pcotret.=
github.io/yocto-zedboard-101/&amp;source=3Dgmail&amp;ust=3D1691164846540000=
&amp;usg=3DAOvVaw3Js6NvSCDZQ2WvYNWKlEDK">https://pcotret.github.io/yoct<wbr=
 />o-zedboard-101/</a>.

--rTOM5bEEBnJLcOGNz0I2--

