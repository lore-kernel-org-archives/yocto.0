Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7E2DE00C72; Tue, 28 Jun 2016 07:57:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5507E00DE8
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 07:57:56 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id r68so1166629qka.3
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 07:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=bVJJPGoYYiG3ScRTr96bQhgTUEUSOAfrNZWJVsOqAhQ=;
	b=XZ7ymXfsKT29L/k/ecKDMN+2JFayu5V1fe+Tq/mJKruSMEacxgMnuWl1UCCRxktoH7
	82vN+zAgUEVH8RvIlx/+T8xMqbexLE09tTWcPeY/mUM6SUD7fV4tzewIOVJ48pvf5xs9
	9jRUGv32S6RUTDdQdmdvvPPcDRkIrtqMUABem59euP/KyR3Ip6HjhR8D20K77tHTP5vl
	kcVGE9g2j00vd3D7lmSAxpGDff93by+i/qqeo+ie3JP1h6Eg2rDnzTgPqVWeryJviiuF
	iN1P38spkxzbjN35kyuARLJT7A21AuZvee5aHAs+h+XfEl99aHzGtBzeD4NJ4o+UhWcY
	HUVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=bVJJPGoYYiG3ScRTr96bQhgTUEUSOAfrNZWJVsOqAhQ=;
	b=Hj03TlW4/wxM4GH0HczpNGQ4jEcfBNm74X8lxmqtPCl1NWnuGStf/fd9eQWW0EXTpe
	GPMG6sGkGkyp7Yy/cWqkXgWCZXe9mmWIqcatkdjcvt+5DCOoPIts5jb0h5GSs5tm+Ngr
	065NGOSwul/rGAAwh/DeRVuUPQ2DvrvDj+cvoVM/9Mx3ZJvOGm47A/dcwm4W/yEuIEYq
	U3iqJcwCNo/kPFsjTrqWu8xUkyaN1+36czQ6HnlKa6RqGwiZATzrPeC9wESNkSt7CZO2
	hmhiiemRCkI+WN+XVudjMXxjsTO7h9b+UW5eSAVn2IOEdCnkW/DeGsxqssgeR3A+ECuB
	nmEQ==
X-Gm-Message-State: ALyK8tIwhyF/t1M37D1GkOUZscp1VH6hZyVTqMg+28v1/gpeFtia1W3UyciQBJ7BPoy0iCpGC+MpDcsLQ6vLMw==
MIME-Version: 1.0
X-Received: by 10.55.39.141 with SMTP id n135mr2658889qkn.149.1467125875958;
	Tue, 28 Jun 2016 07:57:55 -0700 (PDT)
Received: by 10.55.214.83 with HTTP; Tue, 28 Jun 2016 07:57:55 -0700 (PDT)
Received: by 10.55.214.83 with HTTP; Tue, 28 Jun 2016 07:57:55 -0700 (PDT)
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F4E4FA@MBX214.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F4E4FA@MBX214.d.ethz.ch>
Date: Tue, 28 Jun 2016 07:57:55 -0700
Message-ID: <CAMKF1soddua9xwowb+647UCTUZZEy+XrrB64RDatzuNgFvj4SQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Cc: yocto@yoctoproject.org
Subject: Re: qemu-qoriq
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
X-List-Received-Date: Tue, 28 Jun 2016 14:57:58 -0000
Content-Type: multipart/alternative; boundary=94eb2c094a22ad6e63053657dcea

--94eb2c094a22ad6e63053657dcea
Content-Type: text/plain; charset=UTF-8

On Jun 28, 2016 7:22 AM, "Anicic Damir (PSI)" <damir.anicic@psi.ch> wrote:
>
> Hi!
>
> For Yocto 2.1
> I have added meta-fsl-ppc repo,
> added layer to bblayers.conf,
> but how to instruct bitbake to use fsl's qemu-qoriq
> instead of poky's qemu (and qemu-native)
>

See if you can use PREFERRED_VERSION to do this

> Regards,
> Damir
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c094a22ad6e63053657dcea
Content-Type: text/html; charset=UTF-8

<p dir="ltr"></p>
<p dir="ltr">On Jun 28, 2016 7:22 AM, &quot;Anicic Damir (PSI)&quot; &lt;<a href="mailto:damir.anicic@psi.ch">damir.anicic@psi.ch</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi!<br>
&gt;<br>
&gt; For Yocto 2.1<br>
&gt; I have added meta-fsl-ppc repo,<br>
&gt; added layer to bblayers.conf,<br>
&gt; but how to instruct bitbake to use fsl&#39;s qemu-qoriq<br>
&gt; instead of poky&#39;s qemu (and qemu-native)<br>
&gt;</p>
<p dir="ltr">See if you can use PREFERRED_VERSION to do this</p>
<p dir="ltr">&gt; Regards,<br>
&gt; Damir<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</p>

--94eb2c094a22ad6e63053657dcea--
