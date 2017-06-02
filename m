Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48458E009A0; Fri,  2 Jun 2017 15:34:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.12 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay3-3.pub.mailoutpod1-cph3.one.com
	(mailrelay3-3.pub.mailoutpod1-cph3.one.com [46.30.212.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95C83E0082A
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 15:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:in-reply-to:
	references; bh=bF67GHBzKRy+DN/8uVS5mGaenROPRoGJ59/DwhTmY/s=;
	b=J8CCgB4dkLo2SAY0+W3COkCEPIkwzBfrpvAJo8ZHLlMkxmjacm5ZOCK9SFq3riohFN9GIJ42nEWKD
	HSuwVSEeSMYVpiokuBl+reKFD85yIFsV1IVgTQR5N2wKgDSfOrJYJU1Wm2tHngYi0/anMIbvbHyzNa
	umtfoMNXHaD34p84=
X-HalOne-Cookie: 0cc896bc611c7f21b71b57aacd5a87e431201450
X-HalOne-ID: 986cdaeb-47e3-11e7-be78-b82a72d06996
Received: from [192.168.1.10] (unknown [77.2.214.207])
	by smtpfilter3.public.one.com (Halon) with ESMTPSA
	id 986cdaeb-47e3-11e7-be78-b82a72d06996;
	Fri, 02 Jun 2017 22:34:10 +0000 (UTC)
To: yocto@yoctoproject.org, Russell Peterson <bluehills7@comcast.net>
References: <7F0D1533-4933-4618-B5E8-E953E64061D1@comcast.net>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <98ca5758-608b-6eb0-3c67-2d944b3a454d@embexus.com>
Date: Sat, 3 Jun 2017 00:34:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <7F0D1533-4933-4618-B5E8-E953E64061D1@comcast.net>
Subject: Re: SRCPV and SRC_URI
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
X-List-Received-Date: Fri, 02 Jun 2017 22:34:16 -0000
Content-Type: multipart/alternative;
	boundary="------------FCB832A501208AA90D61FFE5"
Content-Language: en-US

--------------FCB832A501208AA90D61FFE5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 03.06.2017 00:26, Russell Peterson wrote:
> Hello,
>
> I’m writing a new recipe and doing something I think should be simple 
> but instead causes an exception when expanding SRCPV.
>
> SRCREV = “xxxxxxxxxxxx”
> SRC_URI = “git://abc.com/xyz.git”
> PV = “1.2+git${SRCPV}
>
> The above works fine.  Problem is, when I add a patch I get an 
> exception when expanding SRCPV!?
>
> SRC_URI_append = “file://myfile.patch <file:///myfile.patch>”

Try with a space right after the first double quote :
SRC_URI_append = “file://myfile.patch”
>
> Adding that simple append line breaks my recipe.
>
> Any clues?  Seems simple but no.  I see countless other recipes that 
> do this.
>
> Regards,
>
> Russell
>
>
>

-- 

Ayoub Zaki

ayoub.zaki@embexus.com
Mobile: +49(0)176-62901545
https://embexus.com


--------------FCB832A501208AA90D61FFE5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 03.06.2017 00:26, Russell Peterson
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:7F0D1533-4933-4618-B5E8-E953E64061D1@comcast.net">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      Hello,
      <div class=""><br class="">
      </div>
      <div class="">I’m writing a new recipe and doing something I think
        should be simple but instead causes an exception when expanding
        SRCPV.</div>
      <div class=""><br class="">
      </div>
      <div class="">SRCREV = “xxxxxxxxxxxx”</div>
      <div class="">SRC_URI = “<a href="git://abc.com/xyz.git" class=""
          moz-do-not-send="true">git://abc.com/xyz.git</a>”</div>
      <div class="">PV = “1.2+git${SRCPV}</div>
      <div class=""><br class="">
      </div>
      <div class="">The above works fine.  Problem is, when I add a
        patch I get an exception when expanding SRCPV!?</div>
      <div class=""><br class="">
      </div>
      <div class="">SRC_URI_append = “<a href="file:///myfile.patch"
          class="" moz-do-not-send="true">file://myfile.patch</a>”</div>
    </blockquote>
    <br>
    Try with a space right after the first double quote :<br>
    SRC_URI_append = “<a class=""> file://myfile.patch</a>”<br>
    <blockquote type="cite"
      cite="mid:7F0D1533-4933-4618-B5E8-E953E64061D1@comcast.net">
      <div class=""><br class="">
      </div>
      <div class="">Adding that simple append line breaks my recipe.</div>
      <div class=""><br class="">
      </div>
      <div class="">Any clues?  Seems simple but no.  I see countless
        other recipes that do this.</div>
      <div class=""><br class="">
      </div>
      <div class="">Regards,</div>
      <div class=""><br class="">
      </div>
      <div class="">Russell</div>
      <div class=""><br class="">
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 

Ayoub Zaki

<a class="moz-txt-link-abbreviated" href="mailto:ayoub.zaki@embexus.com">ayoub.zaki@embexus.com</a>
Mobile: +49(0)176-62901545
<a class="moz-txt-link-freetext" href="https://embexus.com">https://embexus.com</a></pre>
  </body>
</html>

--------------FCB832A501208AA90D61FFE5--
