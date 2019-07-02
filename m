Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BDFBE00D74; Tue,  2 Jul 2019 07:20:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
	[209.85.210.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C872DE00C02
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 07:20:00 -0700 (PDT)
Received: by mail-pf1-f173.google.com with SMTP id i189so8309975pfg.10
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2019 07:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=lwS5JI1NzP8/pWaBefo6xv0sTOQcNV+Wyvr1UTj2m1A=;
	b=FDtCaSSECOFBWbLGyjJxbf6hzsdGv7NXt/MBNpk/eaQ7JD0Iw0sAfbVsCEN2WY6wnV
	fdi2VhTXuBQ1YO7qu/0d+RFEhZnddj+hN1nFZDzJ8/zbE/WH0MTlixYxvTJZM5ffOQ7v
	bKClMEKPG3DuxMH7bh8+VDw4rxUfKipAsFxBGhm95Baj+EIx3xBsKxfuyK6C8h2ywyrb
	mDWAXlaeXsMyIl2YltoBM+oXLBlR98IvyaqRKExrFWNPmV04jDbVtaSDByeCSufyOaPA
	IoXUwcNbLTJ9dpDFGCYu5HUa22PxU6mgu+ma8iuqC36bPTHmWlM6KuPfi77wDUQFzkIa
	tVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=lwS5JI1NzP8/pWaBefo6xv0sTOQcNV+Wyvr1UTj2m1A=;
	b=JpSfzud1bPEUB0oOsgG70MRCUIp9lRxfKis7+Mul6hzKzCmvTxoECWr4UMyaJXV9/d
	tmamwj/sTAJNIK2LUERqZsw7hjCOUDdf0PWbJyXiEwpTTHRUnVv33APqx8anGZbLzIoa
	R8X5QoCUrWCoN5Pulo/eNJrb2D5OppMmk9icFuXkY8nzbw7MY7PvcDCzKskK6ROY9zjZ
	bq1R/TDwt44yDWI3TstMWDWZCxoUOgj7uTrhszEJQqf7Q+yrKGluTB1FvACrW/Tf3MwE
	/QR/9Efi2z61l1WR4do9FDQAmywkXlPWsOuYMmShSXLhPI03tFu+g4crzy90Zi7Fa3cc
	SIQg==
X-Gm-Message-State: APjAAAWcb1lC9RRhfrDGnit6Kjb+v4k65vxR/PmgFnaPkzvt4UUsN20d
	2ha/umtU8dLsRSXBRz2Km70=
X-Google-Smtp-Source: APXvYqz0m7xlqcKKhVTv2WsSBZrxHx9kIRKkEcfOyDEmLbu/n/P/U2VAxR9z/OphK1hQjIAcxd7AqQ==
X-Received: by 2002:a63:f857:: with SMTP id v23mr16764218pgj.228.1562077200361;
	Tue, 02 Jul 2019 07:20:00 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:81e7:b32d:c93c:ae01?
	([2601:202:4180:c33:81e7:b32d:c93c:ae01])
	by smtp.gmail.com with ESMTPSA id
	10sm19282588pfb.30.2019.07.02.07.19.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 Jul 2019 07:19:59 -0700 (PDT)
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
	"pokybuild@centos7-ty-4.yocto.io" <pokybuild@centos7-ty-4.yocto.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <20190701030845.0C5E523F54@centos7-ty-4.yocto.io>
	<fdd9755f-6468-759b-ed3b-22abc5580826@windriver.com>
	<015AB11D45F2C442929CB2765DAE738634E5F069@PGSMSX110.gar.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <fcefb97f-3dfb-2a01-8b01-3df40968abde@gmail.com>
Date: Tue, 2 Jul 2019 07:19:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634E5F069@PGSMSX110.gar.corp.intel.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.7.1.rc1)
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
X-List-Received-Date: Tue, 02 Jul 2019 14:20:02 -0000
Content-Type: multipart/alternative;
	boundary="------------B0DBE2F5FE65F79A38CCC8C7"
Content-Language: en-US

--------------B0DBE2F5FE65F79A38CCC8C7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 7/1/19 10:26 PM, Jain, Sangeeta wrote:
>
> Hello All,
>
>  
>
> Intel and WR YP QA is planning for QA execution for YP build 2.7.rc1
>
> We are planning to execute following tests for this cycle:
>

I would like to thank Intel and Wind River for doing QA.

>  
>
> OEQA-manual tests for following module:
>
>  
>
> 1. OE-Core
>
> 2. BSP-hw
>
> 3. BSP-Qemu
>
>  
>
> Runtime auto test for following platforms:
>
>  
>
> 1. MinnowTurbot 32-bit
>
> 2. Coffee Lake
>
> 3. NUC 7
>
> 4. NUC 6
>
> 5. Edgerouter
>
> 6. MPC8315e-rdb
>
> 7. Beaglebone
>
>  
>
> ETA for completion is Friday, 5 July.
>

That sounds great.

Thank you
Armin
>
>  
>
>  
>
> Thanks & Regards,
>
> Sangeeta Jain
>
>  
>
>  
>
> -------- Forwarded Message --------
>
> *Subject: *
>
> 	
>
> QA notification for completed autobuilder build (yocto-2.7.1.rc1)
>
> *Date: *
>
> 	
>
> Mon, 1 Jul 2019 03:08:44 +0000
>
> *From: *
>
> 	
>
> Poky Build User <pokybuild@centos7-ty-4.yocto.io>
> <mailto:pokybuild@centos7-ty-4.yocto.io>
>
> *To: *
>
> 	
>
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>
> *CC: *
>
> 	
>
> otavio@ossystems.com.br <mailto:otavio@ossystems.com.br>,
> yi.zhao@windriver.com <mailto:yi.zhao@windriver.com>,
> apoorv.sangal@intel.com <mailto:apoorv.sangal@intel.com>,
> ee.peng.yeoh@intel.com <mailto:ee.peng.yeoh@intel.com>,
> aaron.chun.yew.chan@intel.com <mailto:aaron.chun.yew.chan@intel.com>,
> chin.huat.ang@intel.com <mailto:chin.huat.ang@intel.com>,
> richard.purdie@linuxfoundation.org
> <mailto:richard.purdie@linuxfoundation.org>, akuster808@gmail.com
> <mailto:akuster808@gmail.com>, sjolley.yp.pm@gmail.com
> <mailto:sjolley.yp.pm@gmail.com>, sangeeta.jain@intel.com
> <mailto:sangeeta.jain@intel.com>
>
>
>
>
> A build flagged for QA (yocto-2.7.1.rc1) was completed on the
> autobuilder and is available at:
>
>
> https://autobuilder.yocto.io/pub/releases/yocto-2.7.1.rc1
>
>
> Build hash information:
> bitbake: 34ed28a412af642a993642c14bd8b95d5ef22cd8
> meta-gplv2: 460ba027fd79b99151f95c826446f3aead5d17ff
> meta-intel: e84c763090f91196a5d234f62ee39bcf296c7f2e
> meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
> oecore: 886deb4d0919c7a81036ea14fb8fd0f1619dd3a3
> poky: 38d5c8ea98cfa49825c473eba8984c12edf062be
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
> <mailto:richard.purdie@linuxfoundation.org>
>
>


--------------B0DBE2F5FE65F79A38CCC8C7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 7/1/19 10:26 PM, Jain, Sangeeta
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:015AB11D45F2C442929CB2765DAE738634E5F069@PGSMSX110.gar.corp.intel.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:windowtext;
	mso-fareast-language:EN-US;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoPlainText">Hello All,<o:p></o:p></p>
        <p class="MsoPlainText"><o:p> </o:p></p>
        <p class="MsoPlainText">Intel and WR YP QA is planning for QA
          execution for YP build 2.7.rc1<o:p></o:p></p>
        <p class="MsoPlainText">We are planning to execute following
          tests for this cycle:</p>
      </div>
    </blockquote>
    <br>
    I would like to thank Intel and Wind River for doing QA.<br>
    <br>
    <blockquote type="cite"
cite="mid:015AB11D45F2C442929CB2765DAE738634E5F069@PGSMSX110.gar.corp.intel.com">
      <div class="WordSection1">
        <p class="MsoPlainText"><o:p></o:p></p>
        <p class="MsoPlainText"><o:p> </o:p></p>
        <p class="MsoPlainText">OEQA-manual tests for following module:<o:p></o:p></p>
        <p class="MsoPlainText"><o:p> </o:p></p>
        <p class="MsoPlainText">1. OE-Core<o:p></o:p></p>
        <p class="MsoPlainText">2. BSP-hw<o:p></o:p></p>
        <p class="MsoPlainText">3. BSP-Qemu<o:p></o:p></p>
        <p class="MsoPlainText"><o:p> </o:p></p>
        <p class="MsoPlainText">Runtime auto test for following
          platforms:<o:p></o:p></p>
        <p class="MsoPlainText"><o:p> </o:p></p>
        <p class="MsoPlainText">1. MinnowTurbot 32-bit<o:p></o:p></p>
        <p class="MsoPlainText">2. Coffee Lake<o:p></o:p></p>
        <p class="MsoPlainText">3. NUC 7<o:p></o:p></p>
        <p class="MsoPlainText">4. NUC 6<o:p></o:p></p>
        <p class="MsoPlainText">5. Edgerouter<o:p></o:p></p>
        <p class="MsoPlainText">6. MPC8315e-rdb<o:p></o:p></p>
        <p class="MsoPlainText">7. Beaglebone<o:p></o:p></p>
        <p class="MsoPlainText"><o:p> </o:p></p>
        <p class="MsoPlainText">ETA for completion is Friday, 5 July.</p>
      </div>
    </blockquote>
    <br>
    That sounds great.<br>
    <br>
    Thank you<br>
    Armin<br>
    <blockquote type="cite"
cite="mid:015AB11D45F2C442929CB2765DAE738634E5F069@PGSMSX110.gar.corp.intel.com">
      <div class="WordSection1">
        <p class="MsoPlainText"><o:p></o:p></p>
        <p class="MsoNormal"><span
            style="color:windowtext;mso-fareast-language:EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
            style="color:windowtext;mso-fareast-language:EN-US"><o:p> </o:p></span></p>
        <div>
          <p class="MsoNormal"><span style="color:windowtext"
              lang="EN-US">Thanks &amp; Regards,<o:p></o:p></span></p>
          <p class="MsoNormal"><span style="color:windowtext"
              lang="EN-US">Sangeeta Jain<o:p></o:p></span></p>
        </div>
        <p class="MsoNormal"><span
            style="color:windowtext;mso-fareast-language:EN-US"><o:p> </o:p></span></p>
        <div style="border:none;border-left:solid blue 1.5pt;padding:0cm
          0cm 0cm 4.0pt">
          <div>
            <p class="MsoNormal"><a name="_____replyseparator"
                moz-do-not-send="true"></a><o:p> </o:p></p>
          </div>
          <div>
            <p class="MsoNormal">-------- Forwarded Message -------- <o:p></o:p></p>
            <table class="MsoNormalTable" cellspacing="0"
              cellpadding="0" border="0">
              <tbody>
                <tr>
                  <td style="padding:0cm 0cm 0cm 0cm" valign="top"
                    nowrap="nowrap">
                    <p class="MsoNormal" style="text-align:right"
                      align="right"><b>Subject: <o:p></o:p></b></p>
                  </td>
                  <td style="padding:0cm 0cm 0cm 0cm">
                    <p class="MsoNormal">QA notification for completed
                      autobuilder build (yocto-2.7.1.rc1)<o:p></o:p></p>
                  </td>
                </tr>
                <tr>
                  <td style="padding:0cm 0cm 0cm 0cm" valign="top"
                    nowrap="nowrap">
                    <p class="MsoNormal" style="text-align:right"
                      align="right"><b>Date: <o:p></o:p></b></p>
                  </td>
                  <td style="padding:0cm 0cm 0cm 0cm">
                    <p class="MsoNormal">Mon, 1 Jul 2019 03:08:44 +0000<o:p></o:p></p>
                  </td>
                </tr>
                <tr>
                  <td style="padding:0cm 0cm 0cm 0cm" valign="top"
                    nowrap="nowrap">
                    <p class="MsoNormal" style="text-align:right"
                      align="right"><b>From: <o:p></o:p></b></p>
                  </td>
                  <td style="padding:0cm 0cm 0cm 0cm">
                    <p class="MsoNormal">Poky Build User <a
                        href="mailto:pokybuild@centos7-ty-4.yocto.io"
                        moz-do-not-send="true">
                        &lt;pokybuild@centos7-ty-4.yocto.io&gt;</a><o:p></o:p></p>
                  </td>
                </tr>
                <tr>
                  <td style="padding:0cm 0cm 0cm 0cm" valign="top"
                    nowrap="nowrap">
                    <p class="MsoNormal" style="text-align:right"
                      align="right"><b>To: <o:p></o:p></b></p>
                  </td>
                  <td style="padding:0cm 0cm 0cm 0cm">
                    <p class="MsoNormal"><a
                        href="mailto:yocto@yoctoproject.org"
                        moz-do-not-send="true">yocto@yoctoproject.org</a><o:p></o:p></p>
                  </td>
                </tr>
                <tr>
                  <td style="padding:0cm 0cm 0cm 0cm" valign="top"
                    nowrap="nowrap">
                    <p class="MsoNormal" style="text-align:right"
                      align="right"><b>CC: <o:p></o:p></b></p>
                  </td>
                  <td style="padding:0cm 0cm 0cm 0cm">
                    <p class="MsoNormal"><a
                        href="mailto:otavio@ossystems.com.br"
                        moz-do-not-send="true">otavio@ossystems.com.br</a>,
                      <a href="mailto:yi.zhao@windriver.com"
                        moz-do-not-send="true">yi.zhao@windriver.com</a>,
                      <a href="mailto:apoorv.sangal@intel.com"
                        moz-do-not-send="true">
                        apoorv.sangal@intel.com</a>, <a
                        href="mailto:ee.peng.yeoh@intel.com"
                        moz-do-not-send="true">ee.peng.yeoh@intel.com</a>,
                      <a href="mailto:aaron.chun.yew.chan@intel.com"
                        moz-do-not-send="true">aaron.chun.yew.chan@intel.com</a>,
                      <a href="mailto:chin.huat.ang@intel.com"
                        moz-do-not-send="true">chin.huat.ang@intel.com</a>,
                      <a
                        href="mailto:richard.purdie@linuxfoundation.org"
                        moz-do-not-send="true">
                        richard.purdie@linuxfoundation.org</a>, <a
                        href="mailto:akuster808@gmail.com"
                        moz-do-not-send="true">akuster808@gmail.com</a>,
                      <a href="mailto:sjolley.yp.pm@gmail.com"
                        moz-do-not-send="true">sjolley.yp.pm@gmail.com</a>,
                      <a href="mailto:sangeeta.jain@intel.com"
                        moz-do-not-send="true">
                        sangeeta.jain@intel.com</a><o:p></o:p></p>
                  </td>
                </tr>
              </tbody>
            </table>
            <p class="MsoNormal" style="margin-bottom:12.0pt"><br>
              <br>
              <br>
              A build flagged for QA (yocto-2.7.1.rc1) was completed on
              the autobuilder and is available at:<br>
              <br>
              <br>
              <a
                href="https://autobuilder.yocto.io/pub/releases/yocto-2.7.1.rc1"
                moz-do-not-send="true">https://autobuilder.yocto.io/pub/releases/yocto-2.7.1.rc1</a><br>
              <br>
              <br>
              Build hash information: <br>
              bitbake: 34ed28a412af642a993642c14bd8b95d5ef22cd8<br>
              meta-gplv2: 460ba027fd79b99151f95c826446f3aead5d17ff<br>
              meta-intel: e84c763090f91196a5d234f62ee39bcf296c7f2e<br>
              meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4<br>
              oecore: 886deb4d0919c7a81036ea14fb8fd0f1619dd3a3<br>
              poky: 38d5c8ea98cfa49825c473eba8984c12edf062be<br>
              <br>
              <br>
              <br>
              This is an automated message from the Yocto Project
              Autobuilder<br>
              Git: git://git.yoctoproject.org/yocto-autobuilder2<br>
              Email: <a
                href="mailto:richard.purdie@linuxfoundation.org"
                moz-do-not-send="true">richard.purdie@linuxfoundation.org</a><br>
              <br>
              <br>
              <o:p></o:p></p>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------B0DBE2F5FE65F79A38CCC8C7--
