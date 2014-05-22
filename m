Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53304E00B85; Thu, 22 May 2014 03:31:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.210 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from nm22-vm2.bullet.mail.ne1.yahoo.com (unknown [98.138.91.210])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1138EE0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:31:06 -0700 (PDT)
Received: from [98.138.226.176] by nm22.bullet.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 10:31:05 -0000
Received: from [98.138.101.180] by tm11.bullet.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 10:31:05 -0000
Received: from [127.0.0.1] by omp1091.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 10:31:05 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 903065.1105.bm@omp1091.mail.ne1.yahoo.com
Received: (qmail 98787 invoked by uid 60001); 22 May 2014 10:31:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1400754665; bh=0S9PWUxuUF7KwIAHELAOujKYNb8MzetigcP9eaNG0os=;
	h=Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=nx4QGZ0z5zQOliWdFSfRHy045ePBI92+ZRGAlTGo4jGV487cmYwvhq7oi0IRhf6AnBJd0ygGJRBm+K5Zys//Ras1uOtpGqV/tfF5Cd9Ch2Ds0lqVxrbTAsA5Aqxmr36XS45Rph634CBBREPrHc5eG9Y1KsJTQPZGdxCYLq4MyuM=
X-YMail-OSG: zdGQZgoVM1l5C0IZDuAbtBpszfKSGiuWZW9QwfNtw7wxYcE
	zxHaLpXvijXScln1hUDJDupj9nqIvQXeYm_5b698IUh3lgmT87BZSCf71a_r
	NAhjGor_odBnnY5j12XJ9AF36ogIc7SJ61cdBSf9y7KOr9onJ0h.DQZSzJ64
	Y_.Gw9xEsRrP6.zYH1zVJvq8f.5.LzQEXx2tNDN1WtHa3CFebp8fe_deq4Qg
	Owuh4aHik3rKh0ufR0gh3dVVVNBsp6_bvyNN27qVipiZG9kItPcUEUghvEs.
	cw8o4EoewoJ_IhURfIwH1pwS_yEx6SIYhpDjKINFop4I8M7jAFzZK_8Nr1uR
	r3tauk0gABP8x4Z1G3AoyAfSjJ.pUXx8mPE7t3e42XWfrnNd3xQis8e_qbr1
	RImG3drh8K01kSlsbk0PfvzFCI26mL4FQi.fG16KQeByS.sdJ72GGaqDkhIZ
	4hh_JV1h3eT8CLZ0XM_fymzxlDnB3eEI.sInYNYYJzIhvGcV0dIx67Ux7NE8
	oqDv0tvGwXRMG2ApUU2Wt_9ZigOU6jWnR0NmKI9d9kSGGhHF8DblzjGpAbXA
	SOBxIQbjDQ_9ulF1swnMO0H2Sh.fnBnJ3dZpcMTMVfZ8.liTHDXlKbCeYOz2
	opiotUP_Q4efojDKbaBOvSmP4lMU1yNBo5G2bnGM5dwPO.5L3Muxo9H2_HHX 0
Received: from [193.202.22.66] by web122506.mail.ne1.yahoo.com via HTTP;
	Thu, 22 May 2014 03:31:05 PDT
X-Rocket-MIMEInfo: 002.001,
	RG9lcyBhbnlvbmUgaGFzIGFueSBpbnB1dCBvbiB0aGUgbmV4dCBidWc6IGh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k_aWQ9NjIwMwoKVGhhbmtzLApBbGV4ATABAQEB
X-Mailer: YahooMailWebService/0.8.188.663
Message-ID: <1400754665.64074.YahooMailNeo@web122506.mail.ne1.yahoo.com>
Date: Thu, 22 May 2014 03:31:05 -0700 (PDT)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: help needed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 May 2014 10:31:10 -0000
Content-Type: multipart/alternative;
	boundary="913307640-1688207417-1400754665=:64074"

--913307640-1688207417-1400754665=:64074
Content-Type: text/plain; charset=us-ascii

Does anyone has any input on the next bug: https://bugzilla.yoctoproject.org/show_bug.cgi?id=6203

Thanks,
Alex

--913307640-1688207417-1400754665=:64074
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt"><div style="" class="">Does anyone has any input on the next bug: <a style="" class="" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=6203">https://bugzilla.yoctoproject.org/show_bug.cgi?id=6203</a></div><div style="" class=""><br></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;" class="">Thanks,</div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;" class="">Alex<br style="" class=""></div><div style="" class="">&nbsp;</div></div></body></html>

--913307640-1688207417-1400754665=:64074--
