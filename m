Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76860E00D94; Mon, 29 Jan 2018 14:01:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40679E0084D
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 14:01:11 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 56F8D35CE50
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 22:01:10 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id cQ1KGbQpCcw3 for <yocto@yoctoproject.org>;
	Mon, 29 Jan 2018 22:01:02 +0000 (UTC)
Received: from [192.168.0.133]
	(cpc111193-live30-2-0-cust656.17-2.cable.virginm.net [92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 3783635C14A
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 22:01:02 +0000 (UTC)
To: yocto@yoctoproject.org
References: <ef07addc-3840-eceb-85d9-97d79ff3d240@dynamicdevices.co.uk>
	<a131f713-b407-103d-3b66-4f60a402e62c@linux.intel.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <59468c9f-727c-f40e-954b-7aea1742cef0@dynamicdevices.co.uk>
Date: Mon, 29 Jan 2018 22:01:02 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <a131f713-b407-103d-3b66-4f60a402e62c@linux.intel.com>
Subject: Re: Error running testimage under the autobuilder with pyro branch
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
X-List-Received-Date: Mon, 29 Jan 2018 22:01:13 -0000
Content-Type: multipart/alternative;
	boundary="------------9EDC91A19C6D7CAFF4FAA8BC"
Content-Language: en-GB

--------------9EDC91A19C6D7CAFF4FAA8BC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 29/01/2018 07:44, Alexander Kanavin wrote:
> On 01/28/2018 04:57 PM, Alex Lennon wrote:
>> Hi all,
>>
>> I've got some simple automated testing going to test meta-mono 
>> core-image-mono builds.
>>
>> It just bitbakes the image then runs the testimage command
>>
>> This works fine for master and rocko branches, but I get a failure 
>> for pyro
>>
>>      Exception: TypeError: Test oeRuntimeTest is not derived from 
>> OERuntimeTestCase
>>
>> The rest of the log is here: https://pastebin.com/NRVLLtsF
>>
>> Can anybody point me towards what might have changed between branches 
>> / where I'm going wrong?
>
> This has been refactored between rocko and pyro. You need to create a 
> separate pyro branch for your tests, check how those look in pyro 
> oe-core, and modify them accoridngly.
>
> Alex

OK - thanks for that Alex.

Cheers,

Alex


--------------9EDC91A19C6D7CAFF4FAA8BC
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
    <div class="moz-cite-prefix">On 29/01/2018 07:44, Alexander Kanavin
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:a131f713-b407-103d-3b66-4f60a402e62c@linux.intel.com">On
      01/28/2018 04:57 PM, Alex Lennon wrote:
      <br>
      <blockquote type="cite">Hi all,
        <br>
        <br>
        I've got some simple automated testing going to test meta-mono
        core-image-mono builds.
        <br>
        <br>
        It just bitbakes the image then runs the testimage command
        <br>
        <br>
        This works fine for master and rocko branches, but I get a
        failure for pyro
        <br>
        <br>
             Exception: TypeError: Test oeRuntimeTest is not derived
        from OERuntimeTestCase
        <br>
        <br>
        The rest of the log is here: <a class="moz-txt-link-freetext" href="https://pastebin.com/NRVLLtsF">https://pastebin.com/NRVLLtsF</a>
        <br>
        <br>
        Can anybody point me towards what might have changed between
        branches / where I'm going wrong?
        <br>
      </blockquote>
      <br>
      This has been refactored between rocko and pyro. You need to
      create a separate pyro branch for your tests, check how those look
      in pyro oe-core, and modify them accoridngly.
      <br>
      <br>
      Alex
      <br>
    </blockquote>
    <br>
    <div class="moz-signature">OK - thanks for that Alex.<br>
      <br>
      Cheers,<br>
      <br>
      Alex<br>
      <br>
      <div class="preview">
      </div>
    </div>
  </body>
</html>

--------------9EDC91A19C6D7CAFF4FAA8BC--
