Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0063AE00546; Thu, 16 Mar 2017 22:22:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.45 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9B77E0050B
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 22:22:32 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id m27so12104850iti.0
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 22:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:from:date:message-id:subject:to;
	bh=EEIO5hptFh4SwKddwNjmrasNiXUmvb3qZ+xiiG89SQA=;
	b=HJNWj27OSs0GtVoyPq1Y+HLrTlqJxXj2/cjFaoE3pGuOl7Tl5gMhzVnh/W6LkmCljH
	r5zSpRmLa1Qz6ijUIQ81v1IaKdR2MjB3DmNRMI/T0hndfqzOJWZiEaOtwpfz7qvZ7Ft0
	BoDQLjAcsfB+sNw1wi2MC/FW1ht0PvYTCVuv8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EEIO5hptFh4SwKddwNjmrasNiXUmvb3qZ+xiiG89SQA=;
	b=MupaJT9zSaoNOF+aHwDaWLPIAKwR26LB1/aVECArHhWHK4G5LrPri6ywXYIX4+QZ1x
	idESpKB+GCrJ27tTYgIvZe2+ZaV4AVz8Gic0DmrsAB0gsb6BCyezQLt0d2lHSOpoh7dA
	8RuoiO5RkjgVN23/Vtwn2sOvxhyHaLH3eQjxdZYqymLsSHZuqBVe4jaNcSRev94DKYzH
	BU3b2g1XgaN4ajy3hponof7B8XBcO3K++AfHsgtY4FhPrcg3vpbN4jLBL7x0w5mVlNBL
	h8PTWh9oUSc7KKC002snD5pL25tFtgWR9q4mSm4R6krkiuKNhCfMNSjcAoBR9EskLP+d
	G3iw==
X-Gm-Message-State: AFeK/H3sEVfLEVgPshCc8PNebISN3Jpix4DVbCmD7n7HYVUzixaSANYAP9GmNn1neDUQrpZLLaOcpwOfY+SjzQ==
X-Received: by 10.107.55.137 with SMTP id e131mr12852921ioa.105.1489728151229; 
	Thu, 16 Mar 2017 22:22:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.121.197 with HTTP; Thu, 16 Mar 2017 22:22:30 -0700 (PDT)
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Fri, 17 Mar 2017 10:52:30 +0530
Message-ID: <CALDHXtf7=HeQV56Yg-9WPL2nu_-OvaF0qNBVcAsks5SAaBhAiA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Missing or unbuildable dependency chain
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
X-List-Received-Date: Fri, 17 Mar 2017 05:22:36 -0000
Content-Type: multipart/alternative; boundary=001a114ac8344433f1054ae65d59

--001a114ac8344433f1054ae65d59
Content-Type: text/plain; charset=UTF-8

Hi everybody,
I am trying to change the packagegroup from packagegroup-core-base to
packagegroup-core-extende in core-image-minimal-xfce recipe file in
meta-xfce layer.

But i am getting following errors.


ERROR: Nothing RPROVIDES 'dnsmasq' (but
/home/kamama-yocto/yocto/poky/meta-openembedded/meta-oe/recipes-connectivity/networkmanager/
networkmanager_1.0.12.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'dnsmasq' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dnsmasq']
NOTE: Runtime target 'networkmanager-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['networkmanager-dev',
'dnsmasq']
NOTE: Runtime target 'networkmanager' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['networkmanager', 'dnsmasq']
NOTE: Runtime target 'xfce4-power-manager-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['xfce4-power-manager-dev',
'networkmanager', 'dnsmasq']
NOTE: Runtime target 'xfce4-powermanager-plugin' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['xfce4-powermanager-plugin',
'networkmanager', 'dnsmasq']
NOTE: Runtime target 'packagegroup-xfce-extended' is unbuildable,
removing...
Missing or unbuildable dependency chain was: ['packagegroup-xfce-extended',
'xfce4-powermanager-plugin', 'networkmanager', 'dnsmasq']
ERROR: Required build target 'core-image-minimal-xfce' has no buildable
providers.
Missing or unbuildable dependency chain was: ['core-image-minimal-xfce',
'packagegroup-xfce-extended', 'xfce4-powermanager-plugin',
'networkmanager', 'dnsmasq']


How to solve this problem ?

--001a114ac8344433f1054ae65d59
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi everybody,<br>I am trying to change the packagegro=
up from packagegroup-core-base to packagegroup-core-extende in core-image-m=
inimal-xfce recipe file in meta-xfce layer.<br><br></div>But i am getting f=
ollowing errors.<br><br><br><div>ERROR: Nothing RPROVIDES &#39;dnsmasq&#39;=
 (but /home/kamama-yocto/yocto/poky/meta-openembedded/meta-oe/recipes-conne=
ctivity/networkmanager/<a href=3D"http://networkmanager_1.0.12.bb">networkm=
anager_1.0.12.bb</a> RDEPENDS on or otherwise requires it)<br>NOTE: Runtime=
 target &#39;dnsmasq&#39; is unbuildable, removing...<br>Missing or unbuild=
able dependency chain was: [&#39;dnsmasq&#39;]<br>NOTE: Runtime target &#39=
;networkmanager-dev&#39; is unbuildable, removing...<br>Missing or unbuilda=
ble dependency chain was: [&#39;networkmanager-dev&#39;, &#39;dnsmasq&#39;]=
<br>NOTE: Runtime target &#39;networkmanager&#39; is unbuildable, removing.=
..<br>Missing or unbuildable dependency chain was: [&#39;networkmanager&#39=
;, &#39;dnsmasq&#39;]<br>NOTE: Runtime target &#39;xfce4-power-manager-dev&=
#39; is unbuildable, removing...<br>Missing or unbuildable dependency chain=
 was: [&#39;xfce4-power-manager-dev&#39;, &#39;networkmanager&#39;, &#39;dn=
smasq&#39;]<br>NOTE: Runtime target &#39;xfce4-powermanager-plugin&#39; is =
unbuildable, removing...<br>Missing or unbuildable dependency chain was: [&=
#39;xfce4-powermanager-plugin&#39;, &#39;networkmanager&#39;, &#39;dnsmasq&=
#39;]<br>NOTE: Runtime target &#39;packagegroup-xfce-extended&#39; is unbui=
ldable, removing...<br>Missing or unbuildable dependency chain was: [&#39;p=
ackagegroup-xfce-extended&#39;, &#39;xfce4-powermanager-plugin&#39;, &#39;n=
etworkmanager&#39;, &#39;dnsmasq&#39;]<br>ERROR: Required build target &#39=
;core-image-minimal-xfce&#39; has no buildable providers.<br>Missing or unb=
uildable dependency chain was: [&#39;core-image-minimal-xfce&#39;, &#39;pac=
kagegroup-xfce-extended&#39;, &#39;xfce4-powermanager-plugin&#39;, &#39;net=
workmanager&#39;, &#39;dnsmasq&#39;]<br><br><br></div><div>How to solve thi=
s problem ?<br><br></div></div>

--001a114ac8344433f1054ae65d59--
