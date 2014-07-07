Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0E26E00563; Mon,  7 Jul 2014 09:27:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm10-vm4.bullet.mail.ne1.yahoo.com
	(nm10-vm4.bullet.mail.ne1.yahoo.com [98.138.91.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AFAFE002AA
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 09:26:55 -0700 (PDT)
Received: from [98.138.101.129] by nm10.bullet.mail.ne1.yahoo.com with NNFMP;
	07 Jul 2014 16:26:54 -0000
Received: from [98.138.89.162] by tm17.bullet.mail.ne1.yahoo.com with NNFMP;
	07 Jul 2014 16:26:54 -0000
Received: from [127.0.0.1] by omp1018.mail.ne1.yahoo.com with NNFMP;
	07 Jul 2014 16:26:54 -0000
X-Yahoo-Newman-Property: ymail-5
X-Yahoo-Newman-Id: 40855.24661.bm@omp1018.mail.ne1.yahoo.com
Received: (qmail 75607 invoked by uid 60001); 7 Jul 2014 16:26:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1404750413; bh=hCWFj4R2pJyHVOgnrBOPIP7q/oBkGT31hkpXRTnb4Xc=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=xHgaRgderazx7jhMs/H7M4UbeRP43VBwjthRrURTKXJ6YllEKvp4bA38MB8I9BcDnmLJx/eBBgFeNd5Ax+MJ3Hj593k5thjiCJkjTkFIAzTeMt09fyzIZHj6pw29IG34kHyiP5+LjKUZ6etjR3FIH34+15h5/4k4QoONFC8vV4I=
X-YMail-OSG: 0UGYykEVM1lHSZHBGNCpTa4SSA11HE1T8ahQnzKVZP4K1Fu
	5fqewETPw2zGGpqxSrz2qrVqdWjkDnQlPC0eIHK1q058nYdZtFJ0h46w5BuK
	0Jq_f7jqnvrMf4CkAU8aSSCnrUT.h4LXU30oe8MFMM3uj9m9mS.CJpcLHyvP
	wO8_n40L2deylQCTOglIXCEPezenAitQ9aiN2AEL4JnFNMyBoKPsxE4RjRT_
	ItKh7dSYCyv6zIQlFHNigCYg5skqE17k6LOSzpAHgDMLOwsVB.VuWNqgO4os
	UGdJIxAkvQ_vGPdLOEJ5peYZ6DnyJt0nyKv.sezw9_mc7cOhmfY8IW2gh4fs
	VQQxkd0DguySrtQaGLUBKWAwwfwx0LIs0LfQL1s2jXRKdmhsRnSSrYfb01e5
	1xM1QbSY9N3w8OWL_1buZnsIuA9cfaZzMkqsFfVI5e4CUl6JjAYC.NjFXgSZ
	wHkcW8lO.7AKJi1DzYvBB.XqndtPPC0qZy9M7PDD7B3XVTZC72tsSd03fqAj
	q0KAHi6FUlxyuLyLjqqa6UiyIvPC8KIqSRDvAGXOZvnch8SSNr8m7F3BIe9X HrvAv
Received: from [141.85.0.106] by web122501.mail.ne1.yahoo.com via HTTP;
	Mon, 07 Jul 2014 09:26:53 PDT
X-Rocket-MIMEInfo: 002.001,
	dXNpbmc6CgpiaXRiYWtlIC1nIDxpbWFnZS1uYW1lPiAmJiBjYXQgcG4tZGVwZW5kcy5kb3QgfCBncmVwIC12IC1lICctbmF0aXZlJyB8IGdyZXAgLXYgZGlncmFwaCB8IGdyZXAgLXYgLWUgJy1pbWFnZScgfCBhd2sgJ3twcmludCAkMX0nIHwgc29ydCB8IHVuaXEKCnlvdSBjYW4gdmlzdWFsaXplIHRoZSBpbWFnZSBwYWNrYWdlcy4gTGV0IG1lIGtub3cgaWYgdGhpcyBpcyB3aGF0IHlvdSBhcmUgbG9va2luZyBmb3IuCgoKCk9uIE1vbmRheSwgSnVseSA3LCAyMDE0IDc6MDQgUE0sIEJoYXJhdGggQ2hhbmRyYSABMAEBAQE-
X-Mailer: YahooMailWebService/0.8.191.1
References: <CAGM0ZdSWnuJMWoq55STgQwWkNJLubeHhEMwF_LHgVPpK0BMt3w@mail.gmail.com>
Message-ID: <1404750413.98339.YahooMailNeo@web122501.mail.ne1.yahoo.com>
Date: Mon, 7 Jul 2014 09:26:53 -0700
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Bharath Chandra <ellurubharath29@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
In-Reply-To: <CAGM0ZdSWnuJMWoq55STgQwWkNJLubeHhEMwF_LHgVPpK0BMt3w@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: List of Recipes
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
X-List-Received-Date: Mon, 07 Jul 2014 16:27:05 -0000
Content-Type: multipart/alternative;
	boundary="-1149815241-393900048-1404750413=:98339"

---1149815241-393900048-1404750413=:98339
Content-Type: text/plain; charset=us-ascii

using:

bitbake -g <image-name> && cat pn-depends.dot | grep -v -e '-native' | grep -v digraph | grep -v -e '-image' | awk '{print $1}' | sort | uniq

you can visualize the image packages. Let me know if this is what you are looking for.



On Monday, July 7, 2014 7:04 PM, Bharath Chandra <ellurubharath29@gmail.com> wrote:
 


Hi All,

I have an image deployed on gumstix board and I do not know the recipe file used to build that image. I want to know list of recipes used to build that image. Is it possible??



Thanks & Regards,
Bharath Chandra Elluru.
Contact Number:785-979-4875.
-- 
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

---1149815241-393900048-1404750413=:98339
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt"><div style="" class=""><span style="" class="">using:</span></div><div class="" style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;"><br style="" class="">bitbake -g &lt;<em style="" class="">image-name&gt;</em> &amp;&amp; cat pn-depends.dot | grep -v -e '-native' | grep -v digraph | grep -v -e '-image' | awk '{print $1}' | sort | uniq</div><div class="" style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: italic;"><br></div><div class="" style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida
 Grande,sans-serif; background-color: transparent; font-style: italic;">you can visualize the image packages. Let me know if this is what you are looking for.<br></div> <div class="qtdSeparateBR"><br><br></div><div style="display: block;" class="yahoo_quoted"> <div class="" style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div class="" style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div style="" class="" dir="ltr"> <font style="" class="" face="Arial" size="2"> On Monday, July 7, 2014 7:04 PM, Bharath Chandra &lt;ellurubharath29@gmail.com&gt; wrote:<br style="" class=""> </font> </div>  <br style="" class=""><br style="" class=""> <div style="" class=""><div style="" class="" id="yiv1253499270"><div style="" class="" dir="ltr">Hi All,<br style="" class=""><br style="" class="">I have an image deployed on gumstix board and
 I do not know the recipe file used to build that image. I want to know list of recipes used to build that image. Is it possible??<br style="" class="" clear="all"><div style="" class="">
<br style="" class=""><div style="" class="" dir="ltr">Thanks &amp; Regards,<div style="" class="">Bharath Chandra Elluru.</div><div style="" class="">Contact Number:785-979-4875.</div></div>
</div></div>
</div><br style="" class="">-- <br style="" class="">_______________________________________________<br style="" class="">yocto mailing list<br style="" class=""><a style="" class="" ymailto="mailto:yocto@yoctoproject.org" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br style="" class=""><a style="" class="" href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br style="" class=""><br style="" class=""><br style="" class=""></div>  </div> </div>  </div> </div></body></html>

---1149815241-393900048-1404750413=:98339--
