Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B88A6E00B85; Thu, 22 May 2014 06:00:09 -0700 (PDT)
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
	*      [98.138.91.92 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from nm16-vm2.bullet.mail.ne1.yahoo.com (unknown [98.138.91.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FAC4E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 06:00:03 -0700 (PDT)
Received: from [98.138.100.117] by nm16.bullet.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 13:00:03 -0000
Received: from [98.138.226.165] by tm108.bullet.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 13:00:03 -0000
Received: from [127.0.0.1] by omp1066.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 13:00:03 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 171675.66318.bm@omp1066.mail.ne1.yahoo.com
Received: (qmail 22976 invoked by uid 60001); 22 May 2014 13:00:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1400763602; bh=eUynLuJt3/b88U/MpW9EQYgZgimTLLgQsrLgQamDOzM=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=eI7T68UOV3A2TP+lgo/KMEjnEHL7DJUXpnAkftLThn67KiNA285QctOIcwArXdi3Mns7+2WJkmFHWidsD+VKvCYJ1K3E88iDZGZZ4aQuyZ2EXokcmaowiWtaZEK36s4AErggnIIC5f5PwaXab08IX6I1zAFBRj4r8XxbkecxVOI=
X-YMail-OSG: E3D5BzgVM1lD0yInz396B19YKAXuiTCwEPIblzPTS9d26PF
	sINiLlACId9_Yp.n609c6gYingD6CS65Hdh1kWgGfM2dIUT1.dDtqpk_i42v
	to9mkPr0tIzqzs3EpFBD5P6wEGFDHTdqfn14XiyzGsBiR6xCEjIfTKOXS4XN
	YaNv9QO7NiY1kMXbc9LtlMPoiY1FP7VioW68Dv6g3LFXPYnxMoGt0lEwTX0O
	3nuvLB9xZIOSHN8m2rehJ98UY5VT5UWW3PUQ5Sc49g3ZpADAvdstLbKXVbPT
	_EXpI7O_JxWp0Vu1Kj0ovL6Yt75pyWlIiN5YLVX9NRQ7amxSQDuAYuCvsPTo
	abDJzy10Pc3V9HVfRk4n.shk555yvFinC_y_Kx_anHThJx_89PsTS23Plat2
	2azvl1W4cba.nIoC_IQwIFW__q_TrP2mP71Mcj0oUV3uuLNtAVS1RwyOT4sy
	QDHRzIeE33K5n.I9MUWWABweW5VjxlS9mtznyae1zdVgpBNXPv3yFcX9TScy
	zcXRpx8ohYrSwWW7x8GNRXNNENMeNW9WFZ_iN35rKIlq4.lkR8So2JjnQX1H
	J1A43O_MCpjcp
Received: from [193.202.22.66] by web122506.mail.ne1.yahoo.com via HTTP;
	Thu, 22 May 2014 06:00:02 PDT
X-Rocket-MIMEInfo: 002.001,
	VGhlIGhhY2sgd2lsbCBwdXQgdGhlIGxpbmU6IHJlcXVpcmUgcGVybC1wdGVzdC5pbmNpbnNpZGUgYSBpZiBzdHJ1Y3R1cmUuClRoZSBpZiB3aWxsIHRlc3QgaWYgcHRlc3QgaXMgaW4gdGhlIGltYWdlLWZlYXR1cmVzIG9yIG5vdC4KCgpPbiBUaHVyc2RheSwgTWF5IDIyLCAyMDE0IDM6NDMgUE0sIFBhdWwgRWdnbGV0b24gPHBhdWwuZWdnbGV0b25AbGludXguaW50ZWwuY29tPiB3cm90ZToKIAoKCk9uIFRodXJzZGF5IDIyIE1heSAyMDE0IDA1OjM4OjQxIEFsZXhhbmRydSBWYWR1dmEgd3JvdGU6Cj4gaXQgYXABMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
References: <1400754665.64074.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<1560241.kjtZFe1g9j@peggleto-mobl5.ger.corp.intel.com>
	<1400762321.57091.YahooMailNeo@web122502.mail.ne1.yahoo.com>
	<9159150.KsUY2KZbMf@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <1400763602.12423.YahooMailNeo@web122506.mail.ne1.yahoo.com>
Date: Thu, 22 May 2014 06:00:02 -0700 (PDT)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <9159150.KsUY2KZbMf@peggleto-mobl5.ger.corp.intel.com>
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
X-List-Received-Date: Thu, 22 May 2014 13:00:09 -0000
Content-Type: multipart/alternative;
	boundary="913307640-1853257105-1400763602=:12423"

--913307640-1853257105-1400763602=:12423
Content-Type: text/plain; charset=us-ascii

The hack will put the line: require perl-ptest.incinside a if structure.
The if will test if ptest is in the image-features or not.


On Thursday, May 22, 2014 3:43 PM, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
 


On Thursday 22 May 2014 05:38:41 Alexandru Vaduva wrote:
> it appear, it shouldn`t I believe.
> I have a hack to include the perl-ptest module only when
> ptest enabled on image_featuresbut it does not look nice.
> I do not believe this solves the problem.

Sorry, I'm not quite following. What is this hack?


Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

--913307640-1853257105-1400763602=:12423
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt"><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;" class=""><span style="" class="">The hack will put the line: require perl-ptest.inc</span><span style="" class=""> inside a if structure.</span></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;" class=""><span style="" class="">The if will test if ptest is in the image-features or not.<br><br style="" class=""></span></div><div style="display: block;" class="yahoo_quoted"> <div class="" style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande,
 sans-serif; font-size: 12pt;"> <div class="" style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div style="" class="" dir="ltr"> <font style="" class="" face="Arial" size="2"> On Thursday, May 22, 2014 3:43 PM, Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt; wrote:<br style="" class=""> </font> </div>  <br style="" class=""><br style="" class=""> <div style="" class="">On Thursday 22 May 2014 05:38:41 Alexandru Vaduva wrote:<br style="" class="" clear="none">&gt; it appear, it shouldn`t I believe.<br style="" class="" clear="none">&gt; I have a hack to include the perl-ptest module only when<br style="" class="" clear="none">&gt; ptest enabled on image_featuresbut it does not look nice.<br style="" class="" clear="none">&gt; I do not believe this solves the problem.<br style="" class="" clear="none"><br style="" class="" clear="none">Sorry, I'm not quite following. What is this
 hack?<div style="" class="" id="yqtfd18270"><br style="" class="" clear="none"><br style="" class="" clear="none">Cheers,<br style="" class="" clear="none">Paul<br style="" class="" clear="none"><br style="" class="" clear="none">-- <br style="" class="" clear="none"><br style="" class="" clear="none">Paul Eggleton<br style="" class="" clear="none">Intel Open Source Technology Centre<br style="" class="" clear="none"></div><br style="" class=""><br style="" class=""></div>  </div> </div>  </div> </div></body></html>

--913307640-1853257105-1400763602=:12423--
