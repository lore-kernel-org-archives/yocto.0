Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97527E00B85; Thu, 22 May 2014 05:26:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.90.87 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from nm24.bullet.mail.ne1.yahoo.com (unknown [98.138.90.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18418E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 05:26:13 -0700 (PDT)
Received: from [98.138.100.117] by nm24.bullet.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 12:26:12 -0000
Received: from [98.138.101.163] by tm108.bullet.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 12:26:12 -0000
Received: from [127.0.0.1] by omp1074.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 12:26:12 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 665193.80173.bm@omp1074.mail.ne1.yahoo.com
Received: (qmail 14021 invoked by uid 60001); 22 May 2014 12:26:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1400761572; bh=fivjlloF60Pz6CXZ1+sj8feO2AKzO74yg7FkTVE/Sig=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=Wzpc07RpyC9KE6aE12qu57XYq84lym1bTg8q5SZ8HEcyb21X55wgr7m9Hx16itOFI8UnbSL15Ji54MGMcbiDQxVaM1FOZR83Ud7y/cnkb9wkGaPfhN+EunUIqMI+jDk7gfw1IR86tRTKJ8yl1mbtZe6UMsOOWjpWeSOZc83ZSqU=
X-YMail-OSG: tTisY2YVM1mCyDW0eHMFc.XW0mXYURpGCGJNFIyF.YgXouz
	FuyMmjAHgpyEleS1vTUq3jPGTyG9uZLVh9dPBde1hHaKRslR619cY8yXdfjm
	F_NvTOhzs1BwnwWjfS_cJKj8Lcjx9LTgS1VHimAWzKzASbU0AZjf1k4EeGnj
	eA73t8kAltOmD1bruzNtydfLI4Q.Ifs8S3Mmt.RNVivzyTUY6IO1P85jDu0Y
	KEh.YHmgIusxZPjzXatJCf29jQgONNuycwJ4SmWYmD0RptWf_7sVt1GwGiH1
	4yWmMafvLau01xTRXEVBJtGb5qW7yPuw9qyw1oPgaxjoX5LjfE2vKIfGQ57c
	9SpJRpAvC4KVc4ulJerwlilpBfzgC.W0b3EsxQXdrTawOLO1IYYUk554AZI3
	LdfwcjjT0hvrAiXJUyhuynD90VtHQI5Oo42DT5HavJpaQN3qErKrvrk0x6WK
	MeDYWpdEpjbSg6pbQOPX8xNQXyynVjQwjh4x3Mn8gURiHXHSpqo3mnXW9bvn
	3FYyTwP3T.N0.AKUaAtAefWU409gAWcGhaeMh0.bIQnRFw4REyzUQLfSFccD
	R9daVnEkvlmbQnRPlQsvKns3ohiMYdPIEiS145Y_x33sYqj7bCKxzAq3VcE8
	1v1.ygu7mD8CSp6iV5YIrE_37dk_PBP1lElytsuF7zAyzpWHe8cGrXoA81av uJA--
Received: from [193.202.22.66] by web122505.mail.ne1.yahoo.com via HTTP;
	Thu, 22 May 2014 05:26:12 PDT
X-Rocket-MIMEInfo: 002.001,
	SGVsbG8gUGF1bCBJIGRvIG5vdCBoYXZlIGEgY29uY2x1c2lvbiBmcm9tIGJ1aWxkaGlzdG9yeSwgYnV0IG1heWJlIEkgZG8gbm90IGtub3cgZm9yIHdoYXQgdG8gbG9vay4KCk9uIFRodXJzZGF5LCBNYXkgMjIsIDIwMTQgMzoxOSBQTSwgUGF1bCBFZ2dsZXRvbiA8cGF1bC5lZ2dsZXRvbkBsaW51eC5pbnRlbC5jb20.IHdyb3RlOgogCgoKSGkgQWxleCwKCgpPbiBUaHVyc2RheSAyMiBNYXkgMjAxNCAwMzozMTowNSBBbGV4YW5kcnUgVmFkdXZhIHdyb3RlOgo.IERvZXMgYW55b25lIGhhcyBhbnkgaW5wdXQgb24BMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
References: <1400754665.64074.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<8100724.KhZTyC37g9@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <1400761572.79188.YahooMailNeo@web122505.mail.ne1.yahoo.com>
Date: Thu, 22 May 2014 05:26:12 -0700 (PDT)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <8100724.KhZTyC37g9@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: help needed
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
X-List-Received-Date: Thu, 22 May 2014 12:26:16 -0000
Content-Type: multipart/alternative;
	boundary="1438449284-157141524-1400761572=:79188"

--1438449284-157141524-1400761572=:79188
Content-Type: text/plain; charset=us-ascii

Hello Paul I do not have a conclusion from buildhistory, but maybe I do not know for what to look.

On Thursday, May 22, 2014 3:19 PM, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
 


Hi Alex,


On Thursday 22 May 2014 03:31:05 Alexandru Vaduva wrote:
> Does anyone has any input on the next bug:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=6203

We discussed on IRC looking at the dependency graphs from buildhistory to 
determine how the package is being brought in - so what did you find there?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

--1438449284-157141524-1400761572=:79188
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt"><div><span>Hello Paul I do not have a conclusion from buildhistory, but maybe I do not know for what to look.<br></span></div><div style="display: block;" class="yahoo_quoted"> <div style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div dir="ltr"> <font face="Arial" size="2"> On Thursday, May 22, 2014 3:19 PM, Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt; wrote:<br> </font> </div>  <br><br> <div class="y_msg_container">Hi Alex,<br clear="none"><div class="yqt7521088698" id="yqtfd38915"><br clear="none">On Thursday 22 May 2014 03:31:05 Alexandru Vaduva wrote:<br clear="none">&gt; Does anyone has any input on
 the next bug:<br clear="none">&gt; <a shape="rect" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=6203" target="_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=6203</a></div><br clear="none"><br clear="none">We discussed on IRC looking at the dependency graphs from buildhistory to <br clear="none">determine how the package is being brought in - so what did you find there?<br clear="none"><br clear="none">Cheers,<br clear="none">Paul<br clear="none"><br clear="none">-- <br clear="none"><br clear="none">Paul Eggleton<br clear="none">Intel Open Source Technology Centre<div class="yqt7521088698" id="yqtfd84078"><br clear="none"></div><br><br></div>  </div> </div>  </div> </div></body></html>

--1438449284-157141524-1400761572=:79188--
