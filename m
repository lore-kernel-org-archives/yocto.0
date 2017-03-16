Return-Path: <pello.heriz@alumni.mondragon.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34174E00953; Thu, 16 Mar 2017 01:31:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.177 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f177.google.com (mail-ot0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 075BCE00839
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 01:31:38 -0700 (PDT)
Received: by mail-ot0-f177.google.com with SMTP id x37so47040474ota.2
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 01:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=alumni.mondragon.edu; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=gyAIjPT+Ss+sKV0dMc6vQu9ca4KsBt0hMLQ4QE2DoiM=;
	b=Dzjiet6PDPVUkpHyLauS/EY7F8vd796nCX4rV2ToMxJ2azTcNFhYgeyGRrRmMFVSod
	MCQ2cq1qfqcGKqva49m1RUUZbQ2BybFn5PrJDu1ge/fXvb3KuvUizFwzEcKLj1PRzyKA
	4WntsGwkZZzTMlrF/EOXyr+hs3/f2c0nQecrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gyAIjPT+Ss+sKV0dMc6vQu9ca4KsBt0hMLQ4QE2DoiM=;
	b=DTJUaogMxHLL1abx7S94iT94N3P6QMyNjoVxXcvppiNzKa4qBOZI7i3tU9Q14SetyR
	di1/yJR5XlyS+lV73Obrx+yi7VL3BB7SSauFbAIziu1F2i7hRIueol/wmRUNkB/9DSmP
	+xcxfN01xXONN+jwF3IuSndHuIWqOeFpuqM0GkTJRRHA2M41qtJu++r1VaSbJ4yllsRr
	Gx8bryB04TNhUwFB+15wX04I63RVP8zo762GKB4QUYDH84I4X06C1NpLNmFlhOi/Q6F/
	tTmfhGgr0y66h4hgaxjZvJxhRgyvUH7npghFCYC7N4Q6KpmWlimgxh6PD2v2TX51UDZj
	lcOg==
X-Gm-Message-State: AFeK/H1G9UDKFcciqre5A+HMUJJ2sv3yVVwXwcnXV09hTY41laxUijU+sa5AnByvYzXfOsCrXm/ZZy4l2EV++duX
X-Received: by 10.157.36.161 with SMTP id z30mr4261478ota.208.1489653097692;
	Thu, 16 Mar 2017 01:31:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.4.52 with HTTP; Thu, 16 Mar 2017 01:31:37 -0700 (PDT)
From: Pello Heriz <pello.heriz@alumni.mondragon.edu>
Date: Thu, 16 Mar 2017 09:31:37 +0100
Message-ID: <CAFL6qn5mYjVrqmN7Wow4BVfBob5Bz8rckWOOAOYorA9OXsvEgg@mail.gmail.com>
To: yocto@yoctoproject.org, joe_macdonald@mentor.com, flihp@twobit.us, 
	mark.hatle@windriver.com
X-Mailman-Approved-At: Thu, 16 Mar 2017 08:42:04 -0700
Subject: Selinux recipes related error when executing bitbake
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
X-List-Received-Date: Thu, 16 Mar 2017 08:31:42 -0000
Content-Type: multipart/alternative; boundary=94eb2c04f89aba18cf054ad4e3e9

--94eb2c04f89aba18cf054ad4e3e9
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm using Yocto master branch and I'm not able to compile a xen minimal
image. I have experimented different errors, the last one is the next one:

pello@pello-VirtualBox:/opt/yocto_GE/yocto_master_v2/poky/build$ bitbake
xen-image-minimal
Loading cache: 100% |#############################
#######################################################| Time: 0:00:01
Loaded 2751 entries from dependency cache.
Parsing recipes: 100% |#############################
#####################################################| Time: 0:00:01
Parsing of 1986 .bb files complete (1985 cached, 1 parsed). 2752 targets,
208 skipped, 0 masked, 0 errors.
ERROR: No recipes available for:
  /opt/yocto_GE/yocto_master_v2/poky/meta-selinux/recipes-exte
nded/findutils/findutils_4.2.31.bbappend

Can any one help me with this?
Best regards,
Pello

--94eb2c04f89aba18cf054ad4e3e9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(80,0,80);font-size:12.8px">Hi all=
,</span><div style=3D"color:rgb(80,0,80);font-size:12.8px"><br></div><div s=
tyle=3D"color:rgb(80,0,80);font-size:12.8px">I&#39;m using Yocto master bra=
nch and I&#39;m not able to compile a xen minimal image. I have experimente=
d different errors, the last one is the next one:</div><div style=3D"color:=
rgb(80,0,80);font-size:12.8px"><br></div><div style=3D"color:rgb(80,0,80);f=
ont-size:12.8px"><div>pello@pello-VirtualBox:/opt/yo<wbr>cto_GE/yocto_maste=
r_v2/poky/bu<wbr>ild$ bitbake xen-image-minimal</div><div>Loading cache: 10=
0% |#############################<wbr>##############################<wbr>##=
#######################| Time: 0:00:01</div><div>Loaded 2751 entries from d=
ependency cache.</div><div>Parsing recipes: 100% |#########################=
####<wbr>##############################<wbr>#######################| Time: =
0:00:01</div><div>Parsing of 1986 .bb files complete (1985 cached, 1 parsed=
). 2752 targets, 208 skipped, 0 masked, 0 errors.</div><div>ERROR: No recip=
es available for:</div><div>=C2=A0 /opt/yocto_GE/yocto_master_v2/<wbr>poky/=
meta-selinux/recipes-exte<wbr>nded/findutils/findutils_4.2.3<wbr>1.bbappend=
</div><div><br></div><div><div style=3D"color:rgb(34,34,34);font-size:12.8p=
x">Can any one help me with this?</div><div style=3D"color:rgb(34,34,34);fo=
nt-size:12.8px">Best regards,</div><div style=3D"color:rgb(34,34,34);font-s=
ize:12.8px">Pello</div></div></div></div>

--94eb2c04f89aba18cf054ad4e3e9--
