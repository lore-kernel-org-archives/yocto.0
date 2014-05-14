Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D745DE00B83; Wed, 14 May 2014 06:36:19 -0700 (PDT)
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
	*      [98.138.91.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from nm12-vm4.bullet.mail.ne1.yahoo.com (unknown [98.138.91.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F7C4E00975
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 06:36:13 -0700 (PDT)
Received: from [98.138.226.178] by nm12.bullet.mail.ne1.yahoo.com with NNFMP;
	14 May 2014 13:36:13 -0000
Received: from [98.138.89.170] by tm13.bullet.mail.ne1.yahoo.com with NNFMP;
	14 May 2014 13:36:13 -0000
Received: from [127.0.0.1] by omp1026.mail.ne1.yahoo.com with NNFMP;
	14 May 2014 13:36:13 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 155405.18018.bm@omp1026.mail.ne1.yahoo.com
Received: (qmail 98447 invoked by uid 60001); 14 May 2014 13:36:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1400074573; bh=ugcj3+hVPG81MNnpb0HfFjj9aPPFjnUtrMWfuDOTvw4=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=bvOle45RDDLMZ/w+AF9KZhiT7J3P/Gh0uJRisSockVYlokUvZmUWePqoeqCm/rjITVGlzT9m5NS0ANoaQvVxek0MkAiPbc5oF5Jmtg6CO9whgxQsvnnoz2Fmoa8MauaAaHdmiWXd89wW2XK7sQj8jTFK4boeWGkWdKi0XsEfpTk=
X-YMail-OSG: 6oFcQzkVM1nR5Ngd1VpbHP6zJMG8sOsYqaIcGV57qFeSOTw
	BIzpLjc4AvExPTwzKSaqM4u6Pv6kfMO2JOxINSqDBJg0Ygkr3iSty6WvkPIL
	p_DgD2gWfX3AtMRg47GwbFot89LtypN0AThRpkozwqP3uFTBefX6FOTGFDbz
	lxIr8stO7gAwx6rA3_dU9oCo45cS3JEOMyDEwW0vj4VIOiTz06RCIVEYjCPG
	ewg.UvkgdSc37A3DjN9tCConrA8CEN18kZWmE_S6WoU61wf3P3NF4P3bMUyh
	jLcUbnSUI2wp_EyB9v1_PERlf.hAAwtBx5czpVpoJ1oYziYjQvLINl1wRRfT
	FOAtkxHcAnzb0_G4MHIqtb_d6PtNODs9yUK1iBO5qiyfQiR9T.mqKgBPya7O
	xj3MUWiVn4NEDXG.E5JDWzw1jG4ruCPNfTMLr1u62X0lyz48CnVRgv1qA.0h
	GtwafOO6mJnr3GHO16DKsWT2EGT95liuPNJTX.PvceB.eq3D3_oFCrnyuPZ.
	f.1ptApdySe65XGa6mslGHts96mSg4uvZlragAACnXNhJISoocLaGdfSermL
	MQs67SFUGmVEtcd.d
Received: from [193.202.22.66] by web122502.mail.ne1.yahoo.com via HTTP;
	Wed, 14 May 2014 06:36:12 PDT
X-Rocket-MIMEInfo: 002.001,
	CkRlcGVuZGluZyBvbiB5b3VyIHNpdHVhdGlvbi4KSWYgaXQgaXMgYSBvbmUgdGltZSB5b2IgeW91IGNhbiBkbzoKRElTVFJPX0ZFQVRVUkVTX3JlbW92ZSA9ICIgeHh4eHgiIGluIHlvdXIgbG9jYWwuY29uZgoBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
References: <lkvpl2$e8q$1@ger.gmane.org>
Message-ID: <1400074572.84934.YahooMailNeo@web122502.mail.ne1.yahoo.com>
Date: Wed, 14 May 2014 06:36:12 -0700 (PDT)
From: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
To: Neuer User <auslands-kv@gmx.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
In-Reply-To: <lkvpl2$e8q$1@ger.gmane.org>
MIME-Version: 1.0
Subject: Re: Best way to remove DISTRO_FEATURES?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 May 2014 13:36:19 -0000
Content-Type: multipart/alternative;
	boundary="-1396834546-1990800660-1400074572=:84934"

---1396834546-1990800660-1400074572=:84934
Content-Type: text/plain; charset=us-ascii


Depending on your situation.
If it is a one time yob you can do:
DISTRO_FEATURES_remove = " xxxxx" in your local.conf

---1396834546-1990800660-1400074572=:84934
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt"><div style="" class=""><span style="" class=""><br style="" class=""></span></div>Depending on your situation.<br style="" class="">If it is a one time yob you can do:<br style="" class="">DISTRO_FEATURES_remove = " xxxxx" in your local.conf<br style="" class=""> </div></body></html>

---1396834546-1990800660-1400074572=:84934--
