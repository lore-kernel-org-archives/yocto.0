Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4015E00849; Tue, 28 Oct 2014 22:00:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFF1DE0082F
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 22:00:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s9T502GH012045
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 22:00:03 -0700 (PDT)
Received: from [128.224.162.187] (128.224.162.187) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Tue, 28 Oct 2014 22:00:02 -0700
Message-ID: <545074B1.1000904@windriver.com>
Date: Wed, 29 Oct 2014 13:01:37 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CANMvBxCyi6V2RzxyD=twcUMpCfFGLJcjThES+W2ihZYTbhtzTA@mail.gmail.com>
In-Reply-To: <CANMvBxCyi6V2RzxyD=twcUMpCfFGLJcjThES+W2ihZYTbhtzTA@mail.gmail.com>
X-Originating-IP: [128.224.162.187]
Subject: Re: Read-only rootfs, excluding /tmp and /var/logs
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
X-List-Received-Date: Wed, 29 Oct 2014 05:00:11 -0000
Content-Type: multipart/alternative;
	boundary="------------090500050206030502000709"

--------------090500050206030502000709
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/28/2014 09:47 PM, Andrew Wozniak wrote:
> Greetings,
>
> I'm fairly new to the Yocto environment but have worked with lower 
> level Linux build systems. To get started, my target needs to have a 
> read-only rootfs, while excluding specific directories like /tmp and 
> /var/logs...
>
> The Project Dev Manual 5.15 section mentions the configuration of a 
> read-only filesystem. I haven't tried this method yet and was 
> wondering if there are any options for custom exclusions other than 
> the /tmp and /var/run mentioned in the docs.
>
>

I think you are using a sysvinit based system, right?

With the current project, you can follow the two steps below o make 
things work:
1. Modify meta/recipes-core/initscripts/initscripts-1.0/volatiles file, 
remove the corresponding entries for /tmp and /var/log.
You can do this via a bbappend file in your own layer, or you could just 
modified the installed file (/etc/default/volatiles/00_core).

2. Edit your /etc/fstab, add corresponding entries.

I think this is an area we should do better in Yocto.

Best Regards,
Chen Qi


--------------090500050206030502000709
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/28/2014 09:47 PM, Andrew Wozniak
      wrote:<br>
    </div>
    <blockquote
cite="mid:CANMvBxCyi6V2RzxyD=twcUMpCfFGLJcjThES+W2ihZYTbhtzTA@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div>Greetings,<br>
            <br>
          </div>
          I'm fairly new to the Yocto environment but have worked with
          lower level Linux build systems. To get started, my target
          needs to have a read-only rootfs, while excluding specific
          directories like /tmp and /var/logs...<br>
          <br>
        </div>
        The Project Dev Manual 5.15 section mentions the configuration
        of a read-only filesystem. I haven't tried this method yet and
        was wondering if there are any options for custom exclusions
        other than the /tmp and /var/run mentioned in the docs.<br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    I think you are using a sysvinit based system, right?<br>
    <br>
    With the current project, you can follow the two steps below o make
    things work:<br>
    1. Modify meta/recipes-core/initscripts/initscripts-1.0/volatiles
    file, remove the corresponding entries for /tmp and /var/log.<br>
    You can do this via a bbappend file in your own layer, or you could
    just modified the installed file (/etc/default/volatiles/00_core).<br>
    <br>
    2. Edit your /etc/fstab, add corresponding entries.<br>
    <br>
    I think this is an area we should do better in Yocto.<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
    <br>
  </body>
</html>

--------------090500050206030502000709--
