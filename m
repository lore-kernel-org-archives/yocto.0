Return-Path: <brendan.ta@jacques.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B64AE00D7B; Sun, 13 Aug 2017 22:46:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.70.91.145 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 422 seconds by postgrey-1.32 at yocto-www;
	Sun, 13 Aug 2017 22:46:19 PDT
Received: from cal1-mh779.smtproutes.com (cal1-mh779.smtproutes.com
	[208.70.91.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21B1BE00A9C
	for <yocto@yoctoproject.org>; Sun, 13 Aug 2017 22:46:19 -0700 (PDT)
X-Katharion-ID: 1502689127.75171.cal1-mh779
Received: from jacquessvr.jacques.com.au ([110.143.100.131]) by 
	cal1-mh779.smtproutes.com [(192.69.16.145)] with ESMTP via TCP 
	(TLSv1/TLS_RSA_WITH_AES_128_CBC_SHA); 14 Aug 2017 05:38:47 +0000
Received: from [192.168.100.58] (192.168.100.58) by mail.jacques.com.au
	(192.168.100.155) with Microsoft SMTP Server (TLS) id 8.2.255.0;
	Mon, 14 Aug 2017 15:36:39 +1000
From: Brendan Ta <brendan.ta@jacques.com.au>
To: Khem Raj <raj.khem@gmail.com>, <yocto@yoctoproject.org>
References: <9ad6c122-a6a4-be78-d767-b6299de00020@jacques.com.au>
	<CAMKF1soHZukPvaRcMF_F2KmjVsBfMQw1D+6NArJH4J2H7djKNQ@mail.gmail.com>
Message-ID: <b3711112-d00f-9ae7-49f5-87be234a1e75@jacques.com.au>
Date: Mon, 14 Aug 2017 15:38:47 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1soHZukPvaRcMF_F2KmjVsBfMQw1D+6NArJH4J2H7djKNQ@mail.gmail.com>
Subject: Re: Possible to rename file when using KERNEL_DEVICETREE_APPEND?
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
X-List-Received-Date: Mon, 14 Aug 2017 05:46:22 -0000
Content-Type: multipart/alternative;
	boundary="------------38A83B237EC2798BFE449E8E"
Content-Language: en-AU

--------------38A83B237EC2798BFE449E8E
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 14/08/17 14:20, Khem Raj wrote:
> On Sun, Aug 13, 2017 at 3:50 PM, Brendan Ta<brendan.ta@jacques.com.au>  wrote:
>> As the title states, I am including my modified device tree using
>> KERNEL_DEVICETREE_APPEND= and I was wondering if there was the possibility
>> where I could rename the file here?
>>
>> I understand that IMAGE_BOOT_FILES has the option of:
>> IMAGE_BOOT_FILES = "oldname;newname" which uses the OpenEmbedded Image
>> Creator; wic.
>>
>> Is it possible to easily rename the included device tree file using
>> KERNEL_DEVICETREE_APPEND= ?
>>
> I dont think so. But you can insert a function to do so easily. See
> meta-raspberrypi for some
> guidance, it doesnt do exactly what you want but you can get enough
> hints for what can
> be done.

Is it possible for you to provide further clarification on which 
function in the meta-raspberrypi to achieve this?  I am just having some 
trouble finding this.

Thanks


--------------38A83B237EC2798BFE449E8E
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 14/08/17 14:20, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1soHZukPvaRcMF_F2KmjVsBfMQw1D+6NArJH4J2H7djKNQ@mail.gmail.com">
      <pre wrap="">On Sun, Aug 13, 2017 at 3:50 PM, Brendan Ta <a class="moz-txt-link-rfc2396E" href="mailto:brendan.ta@jacques.com.au">&lt;brendan.ta@jacques.com.au&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">As the title states, I am including my modified device tree using
KERNEL_DEVICETREE_APPEND= and I was wondering if there was the possibility
where I could rename the file here?

I understand that IMAGE_BOOT_FILES has the option of:
IMAGE_BOOT_FILES = "oldname;newname" which uses the OpenEmbedded Image
Creator; wic.

Is it possible to easily rename the included device tree file using
KERNEL_DEVICETREE_APPEND= ?

</pre>
      </blockquote>
      <pre wrap="">I dont think so. But you can insert a function to do so easily. See
meta-raspberrypi for some
guidance, it doesnt do exactly what you want but you can get enough
hints for what can
be done.</pre>
    </blockquote>
    <br>
    Is it possible for you to provide further clarification on which
    function in the meta-raspberrypi to achieve this?  I am just having
    some trouble finding this.<br>
    <br>
    Thanks<br>
    <div class="moz-signature"><font face="Calibri"><span
          style="font-size:9.0pt;color:#1F497D;mso-fareast-language:EN-AU"><br>
        </span></font> </div>
  </body>
</html>

--------------38A83B237EC2798BFE449E8E--
