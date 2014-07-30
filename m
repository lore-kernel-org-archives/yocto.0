Return-Path: <jeff@perform3-d.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B41A5E00842; Wed, 30 Jul 2014 11:24:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [98.138.91.139 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm9-vm3.bullet.mail.ne1.yahoo.com
	(nm9-vm3.bullet.mail.ne1.yahoo.com [98.138.91.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73C2AE006B7
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 11:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1406744647; bh=joatHACV35/g5TAnbuUkvCQTfqy0qXNrtO0CFlXOJO8=;
	h=Received:Received:Received:X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:Content-Type;
	b=reemoy8Ase29YHeuqv5EaOGh+ZkToFKZtpMHU8Lqff1R6GY69dAJ+AzkBWnVJ+KXeYQerg4K7R+8fjon30WkJGTkEX/JSMjWfYU95EdD6mFOzBDpp1LBorGpclhq5OaRsxyONFsAfsXkqjChOpsfD3AhC/kcsHoq55qv0EbryRzng3ynNbAj6m4bUvIAtTYDTjnpIUsvwXsG/F4R3KKKDuNvLGqOJm2JnTF5H3B2BCNhHWiKWlUK7Oz/PJhgMZg+PeLxlLPzBf+XVhJ9tXbOLGctuxnr/QVJ09oAdAzJc6jWcsPMAtgG33/3dyu79mB5aRP7MXDD2ph/l3WrxO6yMQ==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=ZSBypJQqaYZeTiNb2l0QAJId+lKr+bp6cTcECzJdzaiuBQhB08lrUwCew+UkCj10mXP+BJNowAVY5HYM2ZIGuBoADxMpEOt5Hzr/nHE0ac02QPhXe58aO/nsFSfaJWMQrbhWOdquIY7Hwet/fFMTr0R42U91m+ek/nPjRdaZQKSB3wv1Krt6Ekv0Rqhgfgb/e1cgKzDybMi5G1w+zKCtL/GRfpG+BgqEoBdFIUXRuq+Di5i6OhkA7/TTeAkblFjFfiVfApiFZnC6SLqvGHYT+SBuDIL55n04dQUcPMtbF/2XsLt0DTODmpqhU43iB1u/JfKBp9aPVz+bf8v7ZzKcyQ==;
Received: from [98.138.226.177] by nm9.bullet.mail.ne1.yahoo.com with NNFMP;
	30 Jul 2014 18:24:07 -0000
Received: from [98.138.104.113] by tm12.bullet.mail.ne1.yahoo.com with NNFMP;
	30 Jul 2014 18:24:07 -0000
Received: from [127.0.0.1] by smtp222.mail.ne1.yahoo.com with NNFMP;
	30 Jul 2014 18:24:07 -0000
X-Yahoo-Newman-Id: 465741.17095.bm@smtp222.mail.ne1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: AXgkFq4VM1l6rx7T90oN12IXNvQptnkvJ1NWwHgHmWYSVlj
	WGPdBxOjw23ehYBSjpEJIWPLndN.I0L8Yv6K_w6YJLmX3e32IawmR0A6WfP1
	jSvSZddL62P3SqaYn2tdl7tINqj72guJSNT8Jf4byRi08_uYPjo9SWG1QuoJ
	jYhezmU6nScNzGPxVHD82lbwi3vxoKtbIw8ilml9e8t7wpStoe7rT92L9ZeV
	0zaJnCKdJnyHaOYjHlrE2wt9SG_XRwUhdFFVjQB.g8Jh3fQE6GnenRwAFOce
	MJKZHAUw029ZBf6fqyVt.Pj8iXquvQXorInREI1IoQCWtP3Q55CgOF3vKS1N
	reWUEbLN.vvLUrZQHPf2vGphWDxu8uekm9X3qwmUoaHcCTgwIRNE2gulJdsL
	DoRskVlm4_Jf.60TUzCKOjoF1RVqQNfYXneDRvLpFJDB55SZL1S.z2IqR6Kp
	vZO_IUSfLsNlh7a7rgppgsi7RRRjWjuqwvvTTBDfUUx6DsS7rYVth_Z2.qv5
	UNZQCvGAhFWFAnxWgoMeJAQ3W7xhTBhyJZtm1mXYyDtWz3bQ4C.qTDGgxvdb
	VnMgxHMGbSvm39SGUF6srw8NccZZSI.kh.EEUEjLwRTvrKd.TeNaNpx5gpcZ
	Ptwqx.js1aMLaVmuxpM32Q9LF9j1YkgQxmaJnSFiRrCNUixR4rAVURL5Mx4l
	3owUY3ad92RQs4tjVKR6h
X-Yahoo-SMTP: Kas7GQyswBDCEaMpidAtUFWwfNJ1_FJM8Hc-
Message-ID: <53D93847.8050306@perform3-d.com>
Date: Wed, 30 Jul 2014 14:24:07 -0400
From: Jeff Spindler <jeff@perform3-d.com>
User-Agent: Postbox 3.0.11 (Windows/20140602)
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 31 Jul 2014 11:46:50 -0700
Subject: Boost logging in Yocto 1.6
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
X-List-Received-Date: Wed, 30 Jul 2014 18:24:11 -0000
Content-Type: multipart/alternative;
	boundary="------------020901070000030305000806"

--------------020901070000030305000806
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

(Please forgive me if I'm not supposed to email to this address)

I posted this on stackoverflow a little while ago, but got no response:  
http://stackoverflow.com/questions/24655115/yocto-1-6-no-libboost-log-in-toolchain


I've installed Yocto 1.6 and run the bitbake to set up the toolchain, 
following the tutorial written by Daiane Angolini. While I see most of 
the boost libraries under $SDKTARGETSYSROOT/usr/lib, there seems to be 
no libboost_log.a nor libboost_log_setup.a. I believe these were 
introduced with Boost 1.55, and that Yocto 1.6 has moved to Boost 1.55. 
Shouldn't they be there, or have I done something wrong?

(my local.conf is also posted at the stackoverflow link above).

Thanks...


-- 
Jeff Spindler
SpinArbor Software, LLC

<http://www.getpostbox.com>

--------------020901070000030305000806
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1"></head><body
 bgcolor="#FFFFFF" text="#000000">
(Please forgive me if I'm not supposed to email to this address)<br>
  <br>
I posted this on stackoverflow a little while ago, but got no response:&nbsp;
 
<a class="moz-txt-link-freetext" href="http://stackoverflow.com/questions/24655115/yocto-1-6-no-libboost-log-in-toolchain">http://stackoverflow.com/questions/24655115/yocto-1-6-no-libboost-log-in-toolchain</a><br>
  <br>
  <br>
  <span><span style="color: rgb(0, 0, 0); font-family: Arial, 
'Liberation Sans', 'DejaVu Sans', sans-serif; font-size: 
13.714285850524902px; font-style: normal; font-variant: normal; 
font-weight: normal; letter-spacing: normal; line-height: 
17.804800033569336px; orphans: auto; text-align: left; text-indent: 0px;
 text-transform: none; white-space: normal; widows: auto; word-spacing: 
0px; -webkit-text-stroke-width: 0px; display: inline !important; float: 
none; background-color: rgb(255, 255, 255);">I've installed Yocto 1.6 
and run the bitbake to set up the toolchain, following the tutorial 
written by Daiane Angolini. While I see most of the boost libraries 
under $SDKTARGETSYSROOT/usr/lib, there seems to be no libboost_log.a nor
 libboost_log_setup.a. I believe these were introduced with Boost 1.55, 
and that Yocto 1.6 has moved to Boost 1.55. Shouldn't they be there, or 
have I done something wrong?</span> <br>
    <br>
(my local.conf is also posted at the stackoverflow link above).<br>
    <br>
Thanks...<br>
  </span><br>
  <br>
  <div class="moz-signature">-- <br>
<div>Jeff Spindler<br>
SpinArbor Software, LLC<span style="text-decoration: underline;"><br>
    <br>
  </span><a href="http://www.getpostbox.com"><span style="color: rgb(51,
 102, 153);"></span></a></div>
  </div>
</body>
</html>

--------------020901070000030305000806--
