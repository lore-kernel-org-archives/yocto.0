Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E49DFE00B3E; Wed, 10 May 2017 02:10:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CAA7E00B31
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 02:09:58 -0700 (PDT)
Received: by mail-wr0-f179.google.com with SMTP id l50so34457642wrc.3
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 02:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=nM/zOEdw7dvLObmEg7IkkKVEy4xePTNr5cWd81rUFHo=;
	b=X1n/bQJF5MEaGJVFtFxbMxlHhZ7aJpSg9iCiMh1tZu+tAl5scI9BE0Cyzy4sEM5HbF
	4/369LvFCOG0nHk5fFZNikywKLaNXmczPN+DglLNIQzj1aCGFxNkOUWtvQfptzooRolv
	p4QVDB1C1cyaAC0HL1cKNTvDlp8e9amoxb6xo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=nM/zOEdw7dvLObmEg7IkkKVEy4xePTNr5cWd81rUFHo=;
	b=YKHnt3iALXC+pk3pR0nXAHybremNDiYUnXP1VaBdJoAOvbIpRUAN9nprQ+8Z23o/9t
	kl7viR0zSZL9OivEyJOvmvtoYN3xgIMGz+Y7PvveivFGufQFNPDwxKUAttxibe7TrBT1
	KC/3QoRMcJtDU5ig/RszQrNE66EAQtdpC4PnlHrU6UYvShx9q3rOr24oNyy940UMwk5V
	GkC8WzqPtwD7nNNvPr+jrCwogSf580lXZHV4e2YR5rdsrdvqvhIVzmlOSbRqT2rZD5rQ
	bEqKSi5W07QWfpHWkqgqJAuXEh3c7q3296YVQ9F7yY+pE9JmErFm378SeKfH4wXuMy8X
	W5eg==
X-Gm-Message-State: AODbwcCiDBbJrK5svQ35gzhEQvRxFzlZebs2X7P3z3SijL2BRevHANrs
	uaOufm6LocxGQ06kocQ=
X-Received: by 10.223.142.50 with SMTP id n47mr3077088wrb.188.1494407397472;
	Wed, 10 May 2017 02:09:57 -0700 (PDT)
Received: from [10.10.61.21] (ARennes-650-1-175-27.w92-135.abo.wanadoo.fr.
	[92.135.46.27]) by smtp.gmail.com with ESMTPSA id
	o97sm2431691wrc.48.2017.05.10.02.09.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 10 May 2017 02:09:56 -0700 (PDT)
To: "Hofemeier, Ulf" <ulf.hofemeier@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <c08863c7-b1da-a318-c4a5-02115ededba2@fridu.net>
	<FEEBC157-F91C-4715-93E4-853F140559D5@intel.com>
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
X-Enigmail-Draft-Status: N1110
Message-ID: <2d9f0deb-6287-9b4e-e1ed-f265c45008cd@fridu.net>
Date: Wed, 10 May 2017 11:09:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <FEEBC157-F91C-4715-93E4-853F140559D5@intel.com>
Subject: Re: how to activate tpm - Minnow BIOS 64 bits
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
X-List-Received-Date: Wed, 10 May 2017 09:10:01 -0000
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="-1">Ulf;<br>
      <br>
      Would you know if the latest BIOS (v0.95)  with tpm2 enabled for
      the Minnowboard Max is available for download somewhere ?<br>
      The default repo does only provide tpm2 for 32 bits BIOS (what is
      of no use AGL.<br>
       - <a class="moz-txt-link-freetext" href="https://firmware.intel.com/projects/minnowboard-max">https://firmware.intel.com/projects/minnowboard-max</a><br>
      While the provided pointers are very valuable, they do not provide
      a scalable solution for general users in the Automotive Grade
      Linux project.<br>
      Would you know why the Minnowboard does not provide tpm2 enabled
      for the 64 bits BIOS ?<br>
      <br>
      Dominig<br>
    </font><br>
    <div class="moz-cite-prefix">Le 09/05/2017 à 20:12, Hofemeier, Ulf a
      écrit :<br>
    </div>
    <blockquote
      cite="mid:FEEBC157-F91C-4715-93E4-853F140559D5@intel.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="Title" content="">
      <meta name="Keywords" content="">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Courier New";
	panose-1:2 7 3 9 2 2 5 2 4 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Courier;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:Calibri;
	color:windowtext;}
span.msoIns
	{mso-style-type:export-only;
	mso-style-name:"";
	text-decoration:underline;
	color:teal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
      <div class="WordSection1">
        <p class="MsoNormal"><span
            style="font-size:11.0pt;font-family:Calibri">Hi Domining,<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;font-family:Calibri"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;font-family:Calibri">Please check
            out this article.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;font-family:Calibri"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;font-family:Calibri"><a
              moz-do-not-send="true"
href="https://prosauce.org/blog/2016/1/11/minnowboard-max-enable-and-test-the-firmware-txe-tpm-20">https://prosauce.org/blog/2016/1/11/minnowboard-max-enable-and-test-the-firmware-txe-tpm-20</a><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;font-family:Calibri"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;font-family:Calibri">Also, there has
            been a person in the MinnowBoard GitHub issue tracker who
            successfully enabled TPM2 for this platform. See the thread
            here:<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;font-family:Calibri"><a
              moz-do-not-send="true"
              href="https://github.com/MinnowBoard-org/bugs-and-help/issues/29">https://github.com/MinnowBoard-org/bugs-and-help/issues/29</a><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;font-family:Calibri"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;font-family:Calibri">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;font-family:Calibri">Ulf<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;font-family:Calibri"><o:p> </o:p></span></p>
        <div style="border:none;border-top:solid #B5C4DF
          1.0pt;padding:3.0pt 0in 0in 0in">
          <p class="MsoNormal"><b><span
                style="font-family:Calibri;color:black">From: </span>
            </b><span style="font-family:Calibri;color:black"><a class="moz-txt-link-rfc2396E" href="mailto:yocto-bounces@yoctoproject.org">&lt;yocto-bounces@yoctoproject.org&gt;</a>
              on behalf of Dominig Foll <a class="moz-txt-link-rfc2396E" href="mailto:dominig.arfoll@fridu.net">&lt;dominig.arfoll@fridu.net&gt;</a><br>
              <b>Date: </b>Tuesday, May 9, 2017 at 8:12 AM<br>
              <b>To: </b><a class="moz-txt-link-rfc2396E" href="mailto:yocto@yoctoproject.org">"yocto@yoctoproject.org"</a>
              <a class="moz-txt-link-rfc2396E" href="mailto:yocto@yoctoproject.org">&lt;yocto@yoctoproject.org&gt;</a><br>
              <b>Subject: </b>[yocto] how to activate tpm<o:p></o:p></span></p>
        </div>
        <div>
          <p class="MsoNormal"><o:p> </o:p></p>
        </div>
        <p class="MsoNormal"><span style="font-size:10.0pt">Hello,<br>
            <br>
            I am trying to get tpm working on a Minnowboard and a Joule.<br>
            I have enabled tpm in meta-security.<br>
            I can see that the Kernel config looks good (see extract
            bellow)<br>
            tpm is enable in the BIOS (fails with TPM&gt;PTT or dTPM
            2.0)<br>
            BUT i still cannot see my tpm device in /sys/class/tpm<br>
            <br>
            Has anyone succeeded to enable tpm with meta-security ?<br>
            If yes, I would be interested to know how you have done.<br>
            <br>
          </span><o:p></o:p></p>
        <pre>-- <o:p></o:p></pre>
        <pre>Dominig ar Foll<o:p></o:p></pre>
        <pre>Senior Software Architect<o:p></o:p></pre>
        <pre>Intel Open Source Technology Centre<o:p></o:p></pre>
        <pre><o:p> </o:p></pre>
        <pre>------- log device not visible ----------<o:p></o:p></pre>
        <pre>tcsd -f<o:p></o:p></pre>
        <pre>TCSD TDDL ERROR: Could not find a device to open!<o:p></o:p></pre>
        <pre>root@intel-corei7-64:~# modprobe -D tpm                                                                                                                                                <o:p></o:p></pre>
        <pre>builtin tpm<o:p></o:p></pre>
        <pre>root@intel-corei7-64:~# modprobe -D tpm_tis<o:p></o:p></pre>
        <pre>builtin tpm_tis<o:p></o:p></pre>
        <pre>root@intel-corei7-64:/tmp# ls /sys/class/tpm                                                                                                                                           <o:p></o:p></pre>
        <pre>root@intel-corei7-64:/tmp# <o:p></o:p></pre>
        <pre><o:p> </o:p></pre>
        <pre>--------- kernel config extract --------------<o:p></o:p></pre>
        <pre><o:p> </o:p></pre>
        <pre>CONFIG_HW_RANDOM_TPM=m<o:p></o:p></pre>
        <pre># CONFIG_NVRAM is not set<o:p></o:p></pre>
        <pre># CONFIG_R3964 is not set<o:p></o:p></pre>
        <pre># CONFIG_APPLICOM is not set<o:p></o:p></pre>
        <pre># CONFIG_MWAVE is not set<o:p></o:p></pre>
        <pre># CONFIG_RAW_DRIVER is not set<o:p></o:p></pre>
        <pre>CONFIG_HPET=y<o:p></o:p></pre>
        <pre>CONFIG_HPET_MMAP=y<o:p></o:p></pre>
        <pre>CONFIG_HPET_MMAP_DEFAULT=y<o:p></o:p></pre>
        <pre># CONFIG_HANGCHECK_TIMER is not set<o:p></o:p></pre>
        <pre>CONFIG_TCG_TPM=y<o:p></o:p></pre>
        <pre>CONFIG_TCG_TIS_CORE=y<o:p></o:p></pre>
        <pre>CONFIG_TCG_TIS=y<o:p></o:p></pre>
        <pre># CONFIG_TCG_TIS_SPI is not set<o:p></o:p></pre>
        <pre># CONFIG_TCG_TIS_I2C_ATMEL is not set<o:p></o:p></pre>
        <pre># CONFIG_TCG_TIS_I2C_INFINEON is not set<o:p></o:p></pre>
        <pre># CONFIG_TCG_TIS_I2C_NUVOTON is not set<o:p></o:p></pre>
        <pre># CONFIG_TCG_NSC is not set<o:p></o:p></pre>
        <pre># CONFIG_TCG_ATMEL is not set<o:p></o:p></pre>
        <pre># CONFIG_TCG_INFINEON is not set<o:p></o:p></pre>
        <pre>CONFIG_TCG_CRB=y<o:p></o:p></pre>
        <pre>CONFIG_TCG_VTPM_PROXY=y<o:p></o:p></pre>
        <pre># CONFIG_TCG_TIS_ST33ZP24_I2C is not set<o:p></o:p></pre>
        <pre># CONFIG_TCG_TIS_ST33ZP24_SPI is not set<o:p></o:p></pre>
        <pre># CONFIG_TELCLOCK is not set<o:p></o:p></pre>
        <pre>CONFIG_DEVPORT=y<o:p></o:p></pre>
        <pre># CONFIG_XILLYBUS is not set<o:p></o:p></pre>
        <pre><o:p> </o:p></pre>
        <pre><o:p> </o:p></pre>
        <pre><o:p> </o:p></pre>
      </div>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre</pre>
  </body>
</html>

