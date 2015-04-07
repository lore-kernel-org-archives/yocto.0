Return-Path: <cca_liam_maps@mail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A682E007A0; Mon,  6 Apr 2015 23:24:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cca_liam_maps[at]mail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.208.4.200 listed in list.dnswl.org]
Received: from mout.gmx.com (mout.gmx.com [74.208.4.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C635E006E5
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 23:24:54 -0700 (PDT)
Received: from [212.103.144.57] by 3capp-mailcom-lxa05.server.lan (via
	HTTP); Tue, 7 Apr 2015 08:24:51 +0200
MIME-Version: 1.0
Message-ID: <trinity-f3b6c238-38af-4128-8ce6-60d249dfbbfc-1428387890765@3capp-mailcom-lxa05>
From: "Nejc Urbajs" <cca_liam_maps@mail.com>
To: yocto@yoctoproject.org
Date: Tue, 7 Apr 2015 08:24:51 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:wgKNofK+70vIltNvz5er6Pb7ird3ivvbRnphqSRtIVP
	jT4rGLRSXNXh7LT5fq43zOp8psdN5LyO4SecqknPwpeB/t4Rr8
	k8WZqMewnoXw3HpHXrH2stOqc2FbLPe9V2I7tct/DDeyzedhWq
	gLp6ZYOJsWFVsKxDFc6Hku/u5800sRbaDGr1kdfS18+nWsMerY
	XlJHjzFFe5KLEMzCMf3ewV0rKvQTkFvDNcG4e3nj15cmGuGat1
	QUxqH33YzeXkNjnzlF3fk3kf2niY9g9szbWum8lnEz/zKuB4gw
	2kNAqRqvu/xvm1teK9OyyQHH0do
X-UI-Out-Filterresults: notjunk:1;
Subject: Re: Parse Error
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
X-List-Received-Date: Tue, 07 Apr 2015 06:24:55 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>I had the same issue and the problem was indeed what Ross suggested. Moving completely to the master branch sorted things out for me.</div>

<div>Have a nice one!</div></div></body></html>

