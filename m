Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42D45E010A4; Mon, 14 May 2018 01:36:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A3ACE01093
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 01:36:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w4E8ZWbb014506
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 01:35:53 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 14 May 2018 01:35:35 -0700
To: <yocto@yoctoproject.org>
References: <CANyNnouoBdqyaxT4rcad9HnDBfmuQ_Gj5eSrVYwUJFNCoAfgrQ@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <fdde3f6c-8c50-82f8-0e29-579dc25a808c@windriver.com>
Date: Mon, 14 May 2018 16:37:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CANyNnouoBdqyaxT4rcad9HnDBfmuQ_Gj5eSrVYwUJFNCoAfgrQ@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: Problem with Extensible SDK update
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
X-List-Received-Date: Mon, 14 May 2018 08:36:04 -0000
Content-Type: multipart/alternative;
	boundary="------------2E45FE544CCC4BD1AFA6E0C0"

--------------2E45FE544CCC4BD1AFA6E0C0
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Pramode,

Thanks for pointing out this problem. I've sent out a patch to fix this 
problem. It's under review now.

   git://git.pokylinux.org/poky-contrib ChenQi/devtool-sdk-update
   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=ChenQi/devtool-sdk-update



Best Regards,
Chen Qi

On 04/14/2018 02:55 AM, Pramode C.E wrote:
> Hi,
>
> I am trying to update an installation of the Yocto Extensible SDK by
> running:
>
> devtool sdk-update update-url
>
> Now it seems like the devtool program is not doing any error checking 
> other than
> verifying whether "update-url" contains a "://" sequence. Whatever 
> random URL
> I throw at it, it just returns "Note: Already up-to-date". I am a 
> Yocto newbie, so maybe
> I am missing something .... has anybody else observed this behaviour?
>
> regards,
> pramode
>
>
>


--------------2E45FE544CCC4BD1AFA6E0C0
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hi Pramode,<br>
      <br>
      Thanks for pointing out this problem. I've sent out a patch to fix
      this problem. It's under review now.<br>
      <br>
      <pre wrap="">  git://git.pokylinux.org/poky-contrib ChenQi/devtool-sdk-update
  <a class="moz-txt-link-freetext" href="http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=ChenQi/devtool-sdk-update">http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=ChenQi/devtool-sdk-update</a></pre>
      <br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 04/14/2018 02:55 AM, Pramode C.E wrote:<br>
    </div>
    <blockquote
cite="mid:CANyNnouoBdqyaxT4rcad9HnDBfmuQ_Gj5eSrVYwUJFNCoAfgrQ@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div>
            <div>
              <div>
                <div>
                  <div>Hi,<br>
                    <br>
                  </div>
                  I am trying to update an installation of the Yocto
                  Extensible SDK by<br>
                </div>
                running:<br>
                <br>
              </div>
              devtool sdk-update update-url<br>
              <br>
            </div>
            Now it seems like the devtool program is not doing any error
            checking other than<br>
          </div>
          verifying whether "update-url" contains a "://" sequence.
          Whatever random URL<br>
        </div>
        <div>I throw at it, it just returns "Note: Already up-to-date".
          I am a Yocto newbie, so maybe<br>
        </div>
        <div>I am missing something .... has anybody else observed this
          behaviour?<br>
          <br>
        </div>
        <div>regards,<br>
        </div>
        <div>pramode<br>
          <br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------2E45FE544CCC4BD1AFA6E0C0--
