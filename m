Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39092E00E04; Thu, 21 Nov 2019 10:00:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [62.149.156.146 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd13146.aruba.it (smtpcmd13146.aruba.it [62.149.156.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74E59E00BA1
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 10:00:18 -0800 (PST)
Received: from [172.16.1.2] ([93.38.119.136])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id Ui0F2101f2wfazh01i0Gwd; Thu, 21 Nov 2019 19:00:17 +0100
To: Mark Hatle <mark.hatle@kernel.crashing.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <d588db5e-aec1-d40a-c503-ee0735b334ea@faresoftware.it>
	<f6dae2f5-1baa-2133-6f49-334b937f92b7@kernel.crashing.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <ffaf76ee-a9f8-f484-610b-c635d5cc9384@faresoftware.it>
Date: Thu, 21 Nov 2019 19:00:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <f6dae2f5-1baa-2133-6f49-334b937f92b7@kernel.crashing.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1574359217; bh=7xQa7MLkphWjBJJzO5Jk+n7bT5tiGSYA1Azc/rEMv4Y=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=Evd3HmrcBdby133EKiJteKJWEHK0mqUndq1G8Mx7vj+J11qVrcI1MVN1NHXMhohQA
	RPtUxBeR3wMfUJfi5krw+otID4INAPNlQER9zaPZd9F848+N7lHGoFUdystXDF1TEG
	ER+pAft7w0yACA1W5NEJC+4gy1TbkSZDs7OL/rHWCnkEBczme3zCEcTkaICR3rqOYq
	XijZVA6MAJlYyJSuzQRbflvLSf16qO0awW8fehU15dP5kPQI001iQ7zZIeGMI36VjN
	pwShEZzknrmGmev2AV7C2AqFRNyGU1QAWQHwkpiYmOk/nk8CpMvOOU0+XxErww26bs
	n7OkJ89YYewVA==
Subject: Re: populate_sdk with my image
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
X-List-Received-Date: Thu, 21 Nov 2019 18:00:20 -0000
Content-Type: multipart/alternative;
	boundary="------------BE6D38184D712C54FF679266"
Content-Language: it

--------------BE6D38184D712C54FF679266
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit

Thanks.

This is true for a Krogoth based project?

Il 21/11/19 17:40, Mark Hatle ha scritto:
> populate_sdk uses the same configuration as the regular image, as well as adding
> "dev-pkgs dbg-pkgs src-pkgs" and optionally doc-pkgs.
>
> See:
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/populate_sdk_base.bbclass
>
> Lines 3-11, and 22.
>
> If dev-pkgs/src-pkgs isn't inclyding your Qt/Qml development components, then
> they may not be packaged properly.
>
> The way dev-pkgs works (like 5) is by taking a list of each package installed in
> the system and then trying to add '-dev' to it, and then install that.  (Roughly)
>
> --Mark
>
>
> On 11/21/19 10:31 AM, Mauro Ziliani wrote:
>> Hi all.
>>
>> I have a recipe for my image with depends from Qt/Qml recipes
>>
>> When I do
>>
>> bitbake -c populate_sdk myimage.bb
>>
>>
>> the sdk doesn't contains the dev version of the Qt/Qml libraries installed in
>> the final image
>>
>>
>> I managing the bitbake variables  TOOLCHAIN_TARGET_TASK and TOOLCHAIN_HOST_TASK
>> adding manually the dependecies.
>>
>>
>> There is an automatic way to do that?
>>
>>
>> M
>>
>>

--------------BE6D38184D712C54FF679266
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=ISO-8859-15">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font size="-1">Thanks.</font></p>
    <p><font size="-1">This is true for a Krogoth based project?</font><br>
    </p>
    <div class="moz-cite-prefix">Il 21/11/19 17:40, Mark Hatle ha
      scritto:<br>
    </div>
    <blockquote type="cite"
      cite="mid:f6dae2f5-1baa-2133-6f49-334b937f92b7@kernel.crashing.org">
      <pre class="moz-quote-pre" wrap="">populate_sdk uses the same configuration as the regular image, as well as adding
"dev-pkgs dbg-pkgs src-pkgs" and optionally doc-pkgs.

See:
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/populate_sdk_base.bbclass">http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/populate_sdk_base.bbclass</a>

Lines 3-11, and 22.

If dev-pkgs/src-pkgs isn't inclyding your Qt/Qml development components, then
they may not be packaged properly.

The way dev-pkgs works (like 5) is by taking a list of each package installed in
the system and then trying to add '-dev' to it, and then install that.  (Roughly)

--Mark


On 11/21/19 10:31 AM, Mauro Ziliani wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Hi all.

I have a recipe for my image with depends from Qt/Qml recipes

When I do

bitbake -c populate_sdk myimage.bb


the sdk doesn't contains the dev version of the Qt/Qml libraries installed in
the final image


I managing the bitbake variables  TOOLCHAIN_TARGET_TASK and TOOLCHAIN_HOST_TASK
adding manually the dependecies.


There is an automatic way to do that?


M


</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------BE6D38184D712C54FF679266--
