Return-Path: <sruetzler@arigo-software.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BADDE00B30; Tue, 22 Dec 2015 04:03:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.237.132.60 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from wp053.webpack.hosteurope.de (wp053.webpack.hosteurope.de
	[80.237.132.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 060B4E00956
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 04:03:19 -0800 (PST)
Received: from p5486940c.dip0.t-ipconnect.de ([84.134.148.12]
	helo=[192.168.90.7]); authenticated
	by wp053.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	id 1aBLev-0000SQ-DP; Tue, 22 Dec 2015 13:03:17 +0100
To: "Burton, Ross" <ross.burton@intel.com>
References: <56791A82.7050809@arigo-software.de>
	<CAJTo0LYb8MokHk+gW4X1eq4orG28Uie8b8ss-YaSMZzXdyGQ6A@mail.gmail.com>
From: Simon Ruetzler <sruetzler@arigo-software.de>
Message-ID: <56793C0F.8070606@arigo-software.de>
Date: Tue, 22 Dec 2015 13:03:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYb8MokHk+gW4X1eq4orG28Uie8b8ss-YaSMZzXdyGQ6A@mail.gmail.com>
X-bounce-key: webpack.hosteurope.de; sruetzler@arigo-software.de; 1450785800;
	34511384; 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto package naming
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
X-List-Received-Date: Tue, 22 Dec 2015 12:03:21 -0000
Content-Type: multipart/alternative;
	boundary="------------040702030709070809030603"

--------------040702030709070809030603
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,
I added INHERIT_remove = "debian" to my local.conf but it's still the same.
Where is the debian.bbclass enabled? I couldn't find it. It this the 
default?

Regards Simon


Am 22.12.2015 um 12:12 schrieb Burton, Ross:
>
> On 22 December 2015 at 09:40, Simon Ruetzler 
> <sruetzler@arigo-software.de <mailto:sruetzler@arigo-software.de>> wrote:
>
>     Why is the demo package created with the libscom name? How can I
>     disable this?
>
>
> Because the default configuration enables debian.bbclass, which 
> renames packages if they contain just a library to be the soname of 
> the library.
>
> If you don't want this to happen in your distro, INHERIT_remove = 
> "debian" in your local.conf or distro configuration will stop it.
>
> Ross


--------------040702030709070809030603
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hello,<br>
    I added INHERIT_remove = "debian" to my local.conf but it's still
    the same.<br>
    Where is the debian.bbclass enabled? I couldn't find it. It this the
    default?<br>
    <br>
    Regards Simon<br>
    <br>
    <br>
    Am 22.12.2015 um 12:12 schrieb Burton, Ross:<br>
    <blockquote
cite="mid:CAJTo0LYb8MokHk+gW4X1eq4orG28Uie8b8ss-YaSMZzXdyGQ6A@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 22 December 2015 at 09:40, Simon
            Ruetzler <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:sruetzler@arigo-software.de"
                target="_blank">sruetzler@arigo-software.de</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=":7wj" class="a3s" style="overflow:hidden">Why is
                the demo package created with the libscom name? How can
                I disable this?<br>
              </div>
            </blockquote>
          </div>
          <br>
          Because the default configuration enables debian.bbclass,
          which renames packages if they contain just a library to be
          the soname of the library.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">If you don't want this to happen in
          your distro, INHERIT_remove = "debian" in your local.conf or
          distro configuration will stop it.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------040702030709070809030603--
