Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 526CBE00B5D; Mon, 12 May 2014 12:37:48 -0700 (PDT)
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
	*      [98.138.90.67 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 113 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 May 2014 12:37:42 PDT
Received: from nm4.bullet.mail.ne1.yahoo.com (unknown [98.138.90.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F17CE00AE8
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 12:37:42 -0700 (PDT)
Received: from [98.138.100.115] by nm4.bullet.mail.ne1.yahoo.com with NNFMP;
	12 May 2014 19:35:49 -0000
Received: from [98.138.89.175] by tm106.bullet.mail.ne1.yahoo.com with NNFMP;
	12 May 2014 19:35:49 -0000
Received: from [127.0.0.1] by omp1031.mail.ne1.yahoo.com with NNFMP;
	12 May 2014 19:35:49 -0000
X-Yahoo-Newman-Property: ymail-5
X-Yahoo-Newman-Id: 275340.40821.bm@omp1031.mail.ne1.yahoo.com
Received: (qmail 71929 invoked by uid 60001); 12 May 2014 19:35:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1399923348; bh=whmAC1it+9VomyRqjsemfLayQdAVDwnQ8HYELOAG4ck=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=RMqFavr3ebnGkXBME53tp6I3b9/Pz9yRsF14+B7rDICBo93tYbXKQN3bysV1g5WNa6Aa6l7TEK+el0hfmuJ1dBe1/StehRm42G7EkHw+6nmNFnlpfn6JFsJD/3xD4An7n9N9lZSos7BHrt0SoQ3eicg7sCdGLCHriI7JbfjIQ58=
X-YMail-OSG: iaml1v4VM1kz.KHPsi7jTDrgjDYlsCykpQnF43RITUDpR6.
	x4dF6vcIAodeEEL6UiN27rQwOnOH1oe8DYzO5o4Cc8cdgadqklZbgnrRzJUy
	i4SHhlxwhukChURAOdYnFmREkzbN3hfiB7GG5MS1CrzMpXTD8BA1uM1kZOF.
	oSuNi8l_b.j8NL3NOXjPkNz6v4mx89BEmPeLQjZoWJMlPhEsf7OLxvtmKzJQ
	YCClJaKSk36avmHPD01cXu_v3DDYVqzoX8uCx0nA_6QCfFmeQ0bVO80vhPQG
	r.NaQKeESb79uTA5ab3AhI1qwksYsJa2fnizdAMMMlgMqE7U2XP3WHrFg7Ru
	TzPGX5KeknA49W9_PfkJPvYGwOBFMLh.DIwKQ0KSP6f3ZhYktKniWXP9z_c_
	fo.c358ua8UKqIlo3DzdG5KH8qL9JHHBLm4_4ieJy_rrEVdbard7fXMm_Vgm
	SsOPU.1tbyiz2VAo2IgaF9JrYPTN3mwrkelO.2GlxS8A9_o6CrirzdPWIxdc
	0gGeBhk5Zcm621u6s4bRpGryHfw5qdT6hyQvbDCZufm2vDK37F5EvQSPAXFQ gdQ--
Received: from [141.85.0.106] by web122501.mail.ne1.yahoo.com via HTTP;
	Mon, 12 May 2014 12:35:48 PDT
X-Rocket-MIMEInfo: 002.001,
	R29vZyBpbml0aWF0aXZlIGd1eXMuCk9uZSBxdWljayBxdWVzdGlvbihvdXQgb2YgY3VyaW9zaXR5KTogd2hhdCBpcyB3aXRoIHRoZSBiYmFwcGVuZCBuZWFyIHRoZSBiYiBmaWxlPwoKCkFsZXgKCk9uIE1vbmRheSwgTWF5IDEyLCAyMDE0IDk6MzIgUE0sIFNlYW4gSHVkc29uIDxzZWFuX2h1ZHNvbkBtZW50b3IuY29tPiB3cm90ZToKIApUaGVyZSBpcyBhIG5ldyBtYWlsaW5nIGxpc3QgZm9yIEFNRCBwbGF0Zm9ybS9ib2FyZCByZWxhdGVkIHBhdGNoZXMgYW5kCmRpc2N1c3Npb24uCllvdSBjYW4gc2lnbiB1cCABMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
References: <53710BDA.10306@mentor.com>
Message-ID: <1399923348.67286.YahooMailNeo@web122501.mail.ne1.yahoo.com>
Date: Mon, 12 May 2014 12:35:48 -0700 (PDT)
From: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
To: Sean Hudson <sean_hudson@mentor.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>, 
	"yocto-bsp@yoctoproject.org" <yocto-bsp@yoctoproject.org>
In-Reply-To: <53710BDA.10306@mentor.com>
MIME-Version: 1.0
Cc: "meta-amd@yoctoproject.org" <meta-amd@yoctoproject.org>
Subject: Re: New meta-amd mailing list announcement
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
X-List-Received-Date: Mon, 12 May 2014 19:37:48 -0000
Content-Type: multipart/alternative;
	boundary="-1149815241-54768896-1399923348=:67286"

---1149815241-54768896-1399923348=:67286
Content-Type: text/plain; charset=us-ascii

Goog initiative guys.
One quick question(out of curiosity): what is with the bbappend near the bb file?


Alex

On Monday, May 12, 2014 9:32 PM, Sean Hudson <sean_hudson@mentor.com> wrote:
 
There is a new mailing list for AMD platform/board related patches and
discussion.
You can sign up here: https://lists.yoctoproject.org/listinfo/meta-amd

The meta-amd layer git repository is publicly available here:
git://git.yoctoproject.org/meta-amd
(cgit web interface here:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-amd/)

Please checkout the README at the top level for details on submitting
patches.
-- 
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

---1149815241-54768896-1399923348=:67286
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt"><div><span>Goog initiative guys.</span></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;"><span>One quick question(out of curiosity): what is with the bbappend near the bb file?</span></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;"><br><span></span></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;"><br><span></span></div><div style="color: rgb(0, 0, 0); font-size: 16px;
 font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;"><span>Alex<br></span></div><div style="display: block;" class="yahoo_quoted"> <div style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div dir="ltr"> <font face="Arial" size="2"> On Monday, May 12, 2014 9:32 PM, Sean Hudson &lt;sean_hudson@mentor.com&gt; wrote:<br> </font> </div>  <div class="y_msg_container">There is a new mailing list for AMD platform/board related patches and<br>discussion.<br>You can sign up here: <a href="https://lists.yoctoproject.org/listinfo/meta-amd" target="_blank">https://lists.yoctoproject.org/listinfo/meta-amd</a><br><br>The meta-amd layer git repository is publicly available
 here:<br>git://git.yoctoproject.org/meta-amd<br>(cgit web interface here:<br><a href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-amd/" target="_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-amd/</a>)<br><br>Please checkout the README at the top level for details on submitting<br>patches.<br>-- <br>_______________________________________________<br>yocto mailing list<br><a ymailto="mailto:yocto@yoctoproject.org" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><br><br></div>  </div> </div>  </div> </div></body></html>

---1149815241-54768896-1399923348=:67286--
