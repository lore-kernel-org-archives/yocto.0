Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8075DE00CA6; Tue, 31 Oct 2017 01:25:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44EEDE00C62
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 01:25:55 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 2529135CE1B
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 08:25:54 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 6G2XhB3MhJR9 for <yocto@yoctoproject.org>;
	Tue, 31 Oct 2017 08:25:46 +0000 (UTC)
Received: from [127.0.0.1] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net
	[92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 7558435C15D
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 08:25:46 +0000 (UTC)
To: Yocto discussion list <yocto@yoctoproject.org>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <1b19d395-4024-0d5c-c9cf-4b5a65d76a0d@dynamicdevices.co.uk>
Date: Tue, 31 Oct 2017 08:25:46 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Subject: Adding ImageTest support to meta-mono
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
X-List-Received-Date: Tue, 31 Oct 2017 08:25:57 -0000
Content-Type: multipart/alternative;
	boundary="------------6146CE3CE15E53CB8DF321DA"
Content-Language: en-GB

--------------6146CE3CE15E53CB8DF321DA
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I've been adding in some simple image tests to meta-mono and things seem 
to be working.

A couple of minor questions came up in the process which I can't spot 
obvious answers to. Perhaps you could help?

(1) The image tests wiki 
(https://wiki.yoctoproject.org/wiki/Image_tests) references use of 
filesdir for resources.

e.g.

oeRuntimeTest.tc.target.copy_to(os.path.join(oeRuntimeTest.tc.filesdir, "test.c"), "/tmp/test.c")

That helper class resolves filesdir to poky/meta ...

I need my resource files to be in the meta-mono layer.

In the end just copied out the code to my layer with

|files_dir = 
os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), 
"../files"))|

However I'm wondering if there's a less hand-rolled way to get a layer 
specific resources folder?

(2) The OETestID(x) decorator seems to be displayed during the test 
execution.

Where is this number derived? Is it layer specific or it if I pluck a 
number of of the air do I risk conflicting with other OE test IDs?

Thanks,

Alex



--------------6146CE3CE15E53CB8DF321DA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi,</p>
    <p>I've been adding in some simple image tests to meta-mono and
      things seem to be working.<br>
    </p>
    <p>A couple of minor questions came up in the process which I can't
      spot obvious answers to. Perhaps you could help?<br>
    </p>
    <p>(1) The image tests wiki
      (<a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Image_tests">https://wiki.yoctoproject.org/wiki/Image_tests</a>) references use of
      filesdir for resources.</p>
    <p>e.g. <br>
    </p>
    <pre style="font-family: monospace, Courier; padding: 1em; border: 1px dashed rgb(47, 111, 171); color: rgb(0, 0, 0); background-color: rgb(249, 249, 249); line-height: 1.1em; font-size: 12.7px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">oeRuntimeTest.tc.target.copy_to(os.path.join(oeRuntimeTest.tc.filesdir, "test.c"), "/tmp/test.c")</pre>
    <p>That helper class resolves filesdir to poky/meta ...</p>
    <p>I need my resource files to be in the meta-mono layer.</p>
    <p>In the end just copied out the code to my layer with</p>
    <pre style="padding: 0px; margin: 0px; color: rgb(255, 255, 255); font-size: 13.3333px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(51, 51, 51); text-decoration-style: initial; text-decoration-color: initial;"><code>   files_dir = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), "../files"))</code></pre>
    <p>However I'm wondering if there's a less hand-rolled way to get a
      layer specific resources folder?</p>
    <p>(2) The OETestID(x) decorator seems to be displayed during the
      test execution. <br>
    </p>
    <p>Where is this number derived? Is it layer specific or it if I
      pluck a number of of the air do I risk conflicting with other OE
      test IDs?</p>
    <p>Thanks,</p>
    <p>Alex</p>
    <p><br>
    </p>
  </body>
</html>

--------------6146CE3CE15E53CB8DF321DA--
