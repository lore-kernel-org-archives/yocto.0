Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CAFCE00B85; Thu, 22 May 2014 06:25:03 -0700 (PDT)
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
	*      [98.138.90.59 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from nm27-vm1.bullet.mail.ne1.yahoo.com (unknown [98.138.90.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A2D7E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 06:24:59 -0700 (PDT)
Received: from [98.138.100.116] by nm27.bullet.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 13:24:59 -0000
Received: from [98.138.89.249] by tm107.bullet.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 13:24:59 -0000
Received: from [127.0.0.1] by omp1041.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 13:24:59 -0000
X-Yahoo-Newman-Property: ymail-5
X-Yahoo-Newman-Id: 153572.90810.bm@omp1041.mail.ne1.yahoo.com
Received: (qmail 17782 invoked by uid 60001); 22 May 2014 13:24:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1400765099; bh=jmV6+V9XIZnSLFfRynJzzQJz5RJD1O8AczUIxqMIvJ0=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=187MqUg6/CKTHZraExlMmnIOMjWPL/DO0DVtQJBq5dSvZm0rwUwnTDHPcqRzmYged2O90eLTkhbG3Z1zfHJ9ZzguCJAJZe1Ef274uqhglc+oM9JPmT/YQ/5VYiWZIwCeJlM0wwEWrzk7B+u6dMhJl6DdSEsCKcqFdNknLZ1mg8E=
X-YMail-OSG: d611z9oVM1nPANMOwxa0s9ZD0_VTIDkL0aIiJYlT9fuLXcd
	xvg8MZNAh7tv2cWun5jXHbmnfFr57I2R4.j35qD57ItpMr_Quze6KxWd..qw
	CZRwWnnXaUggyqQXXWFn57MFR6dJ.ah3ur.q6zF3iHABQYlqT6nG3.se377Y
	KEarC4LNpGwuBcKBSOiFhn90kIaPQ1E_3An72T5p6OWOGNwo3bXBE0beotYC
	EHEPZ95cGwKm1_Iwe.MDRsrz5z50h1u.lbzzlz0dbrTqo3x69wh9y0.9qG3i
	7rHo9_NuR.VmXBBvpjIeF.FG.gua4Xd5AaHJJgmWLP6tMv.JvYdNADYIzQLi
	D39FEK7A9jm6.ScgHDxEvBK.cNUadbF8OuwmhSqikmJ5fQhcmN1gu_ZrOgJY
	fjjYSG_qiRgTWOU.GuNiG3.oqW4W6qbjNQj.K_FCUmRBi_BHbpIra0LOKsLv
	ssIsgkucReT_iTAmtWOGCDKW7f3yD8gHSDAfAJG8brCC_wQN88YS2xFt756_
	BFk9nwwlinmoDkcHs1sa7IFbz7ntzd.58hE9.0hM1KRj6jQ_wgAwE3rrUuKS
	oLMttFhnlbmROwxx9x550AsjL66yVodfUroYh3tWDXhmeNtuhiw7OEK56eEb
	nx1yn0vuZPQaIv0sSNQ--
Received: from [193.202.22.66] by web122502.mail.ne1.yahoo.com via HTTP;
	Thu, 22 May 2014 06:24:58 PDT
X-Rocket-MIMEInfo: 002.001,
	SSBhdHRhY2hlZCB0aGUgZGVwZW5kcyAuZG90IGZpbGUgYW5kIGFsc28gYSBzbWFsbCBwZXJsLXB0ZXN0LmluZm8gZmlsZSB3aXRoIG9ubHkgdGhlIHBlcmwtcHRlc3Qgb2NjdXJlbmNlcy4KCk9uIFRodXJzZGF5LCBNYXkgMjIsIDIwMTQgNDoxNSBQTSwgUGF1bCBFZ2dsZXRvbiA8cGF1bC5lZ2dsZXRvbkBsaW51eC5pbnRlbC5jb20.IHdyb3RlOgogCgoKT24gVGh1cnNkYXkgMjIgTWF5IDIwMTQgMDY6MDA6MDIgQWxleGFuZHJ1IFZhZHV2YSB3cm90ZToKPiBPbiBUaHVyc2RheSwgTWF5IDIyLCAyMDE0IDM6NDMBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
References: <1400754665.64074.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<9159150.KsUY2KZbMf@peggleto-mobl5.ger.corp.intel.com>
	<1400763602.12423.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<1965694.z39UhZdkqB@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <1400765098.42556.YahooMailNeo@web122502.mail.ne1.yahoo.com>
Date: Thu, 22 May 2014 06:24:58 -0700 (PDT)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1965694.z39UhZdkqB@peggleto-mobl5.ger.corp.intel.com>
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
X-List-Received-Date: Thu, 22 May 2014 13:25:03 -0000
Content-Type: multipart/alternative;
	boundary="-1396834546-478578140-1400765098=:42556"

---1396834546-478578140-1400765098=:42556
Content-Type: text/plain; charset=us-ascii

I attached the depends .dot file and also a small perl-ptest.info file with only the perl-ptest occurences.

On Thursday, May 22, 2014 4:15 PM, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
 


On Thursday 22 May 2014 06:00:02 Alexandru Vaduva wrote:
> On Thursday, May 22, 2014 3:43 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Thursday 22 May 2014 05:38:41 Alexandru Vaduva wrote:
> > > it appear, it shouldn`t I believe.
> > > I have a hack to include the perl-ptest module only when
> > > ptest enabled on image_featuresbut it does not look nice.
> > > I do not believe this solves the problem.
> > 
> > Sorry, I'm not quite following. What is this hack?
>
> The hack will put the line: require perl-ptest.incinside a if structure.
> The if will test if ptest is in the image-features or not.

There's nothing in that file that explicitly adds a dependency from perl (or 
any other package) on the perl-ptest package. So far as far as I know, nobody 
has yet reproduced the issue you're reporting. Are you building the exact same 
version of the perl recipe? Have you modified the recipe at all?


Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

---1396834546-478578140-1400765098=:42556
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt"><div><span>I attached the depends .dot file and also a small perl-ptest.info file with only the perl-ptest occurences.<br></span></div><div style="display: block;" class="yahoo_quoted"> <div style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div dir="ltr"> <font face="Arial" size="2"> On Thursday, May 22, 2014 4:15 PM, Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt; wrote:<br> </font> </div>  <br><br> <div class="y_msg_container">On Thursday 22 May 2014 06:00:02 Alexandru Vaduva wrote:<br clear="none">&gt; On Thursday, May 22, 2014 3:43 PM, Paul Eggleton<br clear="none">&gt; &lt;<a shape="rect"
 ymailto="mailto:paul.eggleton@linux.intel.com" href="mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt; wrote:<br clear="none">&gt; &gt; On Thursday 22 May 2014 05:38:41 Alexandru Vaduva wrote:<br clear="none">&gt; &gt; &gt; it appear, it shouldn`t I believe.<br clear="none">&gt; &gt; &gt; I have a hack to include the perl-ptest module only when<br clear="none">&gt; &gt; &gt; ptest enabled on image_featuresbut it does not look nice.<br clear="none">&gt; &gt; &gt; I do not believe this solves the problem.<br clear="none">&gt; &gt; <br clear="none">&gt; &gt; Sorry, I'm not quite following. What is this hack?<br clear="none">&gt;<br clear="none">&gt; The hack will put the line: require perl-ptest.incinside a if structure.<br clear="none">&gt; The if will test if ptest is in the image-features or not.<br clear="none"><br clear="none">There's nothing in that file that explicitly adds a dependency from perl (or <br clear="none">any
 other package) on the perl-ptest package. So far as far as I know, nobody <br clear="none">has yet reproduced the issue you're reporting. Are you building the exact same <br clear="none">version of the perl recipe? Have you modified the recipe at all?<div class="yqt6096445069" id="yqtfd97114"><br clear="none"><br clear="none">Cheers,<br clear="none">Paul<br clear="none"><br clear="none">-- <br clear="none"><br clear="none">Paul Eggleton<br clear="none">Intel Open Source Technology Centre<br clear="none"></div><br><br></div>  </div> </div>  </div> </div></body></html>

---1396834546-478578140-1400765098=:42556--
