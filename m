Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51BD4E00B87; Thu, 22 May 2014 05:38:46 -0700 (PDT)
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
	*      [98.138.91.55 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from nm3-vm0.bullet.mail.ne1.yahoo.com (unknown [98.138.91.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 110A7E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 05:38:42 -0700 (PDT)
Received: from [98.138.226.178] by nm3.bullet.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 12:38:41 -0000
Received: from [98.138.226.162] by tm13.bullet.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 12:38:41 -0000
Received: from [127.0.0.1] by omp1063.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 12:38:41 -0000
X-Yahoo-Newman-Property: ymail-5
X-Yahoo-Newman-Id: 619002.96870.bm@omp1063.mail.ne1.yahoo.com
Received: (qmail 78939 invoked by uid 60001); 22 May 2014 12:38:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1400762321; bh=jp7PWCGZlnJMYaU/T376fVGNsG+B1SiSHx3KzC7rT7o=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=WoEpxjfooNDL+CgDJi5e/D4DrNYQjbRz9k8Bou4Bbuq+PjxamDUt7UsGLYEePoDKN9cOQ6mZhfl7AZPlP3PfFQ7bfw/4ebx8nQUDQ5BR/0jfdPTYm2Zhtmuz35qlLTxj56xT7wKYPBA9Cs2z3BCT1YMIlKEDiNBXhVZs0/9apbs=
X-YMail-OSG: SxN77OwVM1kJbkBusFMSTwYhX0EVLv_jn2kN7GaYaZf_I0j
	9HrngbIBgWeDjxZTZwo8eGSqMpj.wz0uXtWvJlWituvJOr0TUBkuJxDVOv4q
	lRJyVC1xOvpvvGa9tNHGmFDbI5_EfeboSBBRyUvwd5hWuGpbgwLi38YHHKxZ
	f2PTd1i3pcx_0d.r6cYHltCs5ApGrXvjxYoJ18ZqSBivhYgsQNoLb3.GiwUI
	iFYP08kTOgBqQtR2NdS8uptWDwgyeOCcuIAzswx0rqAbbd9p5CqKUGy3vrTc
	6NxbwUBicneBAXPSjWJcuUb.bjt4vcD65gNzOWvtoUvPPO7MCJtiaLSthgEv
	4rVjDu3HxeXEQpIXXL5ko9FR84pMmrxYEdERrnjL3pyYMuyY3Z1pw42vO_fx
	lwRab4HPqoO9ZhY0GaOhU1HA6j6dkg7fnwUbNbIF_IFVTbJBANGIpJrpfxwm
	YbZi8eWXPALa6YYf2HiOkAhpaWe7CcLespyphYzobWQQDwJGxknIoOjhvLM5
	q..5cNwRWvFBEeMwzpk2arIzTPwzx2hBOeslzv6iOHiHuXZC8JY2uFHJ.wmP
	GKg1LmoyNry88UaIJj9JIywnboAzSeyyJhx8kzC.etmHCWI0WjRW6JbP8AW8
	K2WArTfrymCR8LjSdagdf99_Fggqvwf2kmvkvLQrl_bJObSjxNtut.a76yqg CFQ--
Received: from [193.202.22.66] by web122502.mail.ne1.yahoo.com via HTTP;
	Thu, 22 May 2014 05:38:41 PDT
X-Rocket-MIMEInfo: 002.001,
	aXQgYXBwZWFyLCBpdCBzaG91bGRuYHQgSSBiZWxpZXZlLgpJIGhhdmUgYSBoYWNrIHRvIGluY2x1ZGUgdGhlIHBlcmwtcHRlc3QgbW9kdWxlIG9ubHkgd2hlbiAKCnB0ZXN0IGVuYWJsZWQgb24gaW1hZ2VfZmVhdHVyZXNidXQgaXQgZG9lcyBub3QgbG9vayBuaWNlLgpJIGRvIG5vdCBiZWxpZXZlIHRoaXMgc29sdmVzIHRoZSBwcm9ibGVtLgoKCk9uIFRodXJzZGF5LCBNYXkgMjIsIDIwMTQgMzozNCBQTSwgUGF1bCBFZ2dsZXRvbiA8cGF1bC5lZ2dsZXRvbkBsaW51eC5pbnRlbC5jb20.IHdyb3RlOgogCgoKT24BMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
References: <1400754665.64074.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<8100724.KhZTyC37g9@peggleto-mobl5.ger.corp.intel.com>
	<1400761572.79188.YahooMailNeo@web122505.mail.ne1.yahoo.com>
	<1560241.kjtZFe1g9j@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <1400762321.57091.YahooMailNeo@web122502.mail.ne1.yahoo.com>
Date: Thu, 22 May 2014 05:38:41 -0700 (PDT)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1560241.kjtZFe1g9j@peggleto-mobl5.ger.corp.intel.com>
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
X-List-Received-Date: Thu, 22 May 2014 12:38:46 -0000
Content-Type: multipart/alternative;
	boundary="-1396834546-981124204-1400762321=:57091"

---1396834546-981124204-1400762321=:57091
Content-Type: text/plain; charset=us-ascii

it appear, it shouldn`t I believe.
I have a hack to include the perl-ptest module only when 

ptest enabled on image_featuresbut it does not look nice.
I do not believe this solves the problem.


On Thursday, May 22, 2014 3:34 PM, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
 


On Thursday 22 May 2014 05:26:12 Alexandru Vaduva wrote:
> On Thursday, May 22, 2014 3:19 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Thursday 22 May 2014 03:31:05 Alexandru Vaduva wrote:
> > > Does anyone has any input on the next bug:
> > > https://bugzilla.yoctoproject.org/show_bug.cgi?id=6203
> > 
> > We discussed on IRC looking at the dependency graphs from buildhistory to
> > determine how the package is being brought in - so what did you find there?
>
> I do not have a conclusion from buildhistory, but maybe I do not
> know for what to look.

I would expect somewhere "-> perl-ptest" to appear in the depends.dot file for 
the image.


Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

---1396834546-981124204-1400762321=:57091
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt"><div><span>it appear, it shouldn`t I believe.</span></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;"><span>I have a hack to include the perl-ptest module only when <br></span></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;"><span>ptest enabled on image_features</span><span> but it does not look nice.</span></div><div style="color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style: normal;"><span>I do not
 believe this solves the problem.<br><br></span></div><div style="display: block;" class="yahoo_quoted"> <div style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div style="font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div dir="ltr"> <font face="Arial" size="2"> On Thursday, May 22, 2014 3:34 PM, Paul Eggleton &lt;paul.eggleton@linux.intel.com&gt; wrote:<br> </font> </div>  <br><br> <div class="y_msg_container">On Thursday 22 May 2014 05:26:12 Alexandru Vaduva wrote:<br clear="none">&gt; On Thursday, May 22, 2014 3:19 PM, Paul Eggleton<br clear="none">&gt; &lt;<a shape="rect" ymailto="mailto:paul.eggleton@linux.intel.com" href="mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt; wrote:<br clear="none">&gt; &gt; On Thursday 22 May 2014 03:31:05 Alexandru Vaduva wrote:<br clear="none">&gt; &gt; &gt; Does
 anyone has any input on the next bug:<br clear="none">&gt; &gt; &gt; <a shape="rect" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=6203" target="_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=6203</a><br clear="none">&gt; &gt; <br clear="none">&gt; &gt; We discussed on IRC looking at the dependency graphs from buildhistory to<br clear="none">&gt; &gt; determine how the package is being brought in - so what did you find there?<br clear="none">&gt;<br clear="none">&gt; I do not have a conclusion from buildhistory, but maybe I do not<br clear="none">&gt; know for what to look.<br clear="none"><br clear="none">I would expect somewhere "-&gt; perl-ptest" to appear in the depends.dot file for <br clear="none">the image.<div class="yqt2061271298" id="yqtfd61600"><br clear="none"><br clear="none">Cheers,<br clear="none">Paul<br clear="none"><br clear="none">-- <br clear="none"><br clear="none">Paul Eggleton<br clear="none">Intel Open Source
 Technology Centre<br clear="none"></div><br><br></div>  </div> </div>  </div> </div></body></html>

---1396834546-981124204-1400762321=:57091--
