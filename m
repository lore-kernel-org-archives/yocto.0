Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7A91E00CDF; Wed, 26 Dec 2018 01:44:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67CF2E00CDD
	for <yocto@yoctoproject.org>; Wed, 26 Dec 2018 01:44:01 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id wBQ9hxTd013747
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Dec 2018 01:43:59 -0800 (PST)
Received: from [128.224.163.218] (128.224.163.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 26 Dec 2018 01:43:58 -0800
To: Nicholas Tsirakis <niko.tsirakis@gmail.com>, <ross.burton@intel.com>
References: <CAFqpmVKxkvP5_UVrmyjowCpCYf12ymoLD1ii3uYZ0q8GsJnYzA@mail.gmail.com>
	<CAJTo0LZt+h7cwzZTO9+gqtFhCnfXPKvRZQJF+i8HU=+pbdwtdQ@mail.gmail.com>
	<CAFqpmVKKGb1J63Cm_e4Ozhicx21Hn9Gy8WPD8WkN7G-dxkDuVg@mail.gmail.com>
From: Kang Kai <Kai.Kang@windriver.com>
Message-ID: <ab6b35cb-fdc3-badd-a9ce-01010d96a96d@windriver.com>
Date: Wed, 26 Dec 2018 17:41:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAFqpmVKKGb1J63Cm_e4Ozhicx21Hn9Gy8WPD8WkN7G-dxkDuVg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Quick confirmation about multilib
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
X-List-Received-Date: Wed, 26 Dec 2018 09:44:02 -0000
Content-Type: multipart/alternative;
	boundary="------------66F55A213E339362CC4340AD"
Content-Language: en-US

--------------66F55A213E339362CC4340AD
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2018/12/13 上午1:16, Nicholas Tsirakis wrote:
> Sure, thanks for the reply. The image itself should is 64 bit and I 
> want to add an additional toolchain to my image that can run 32-bit 
> binaries. I am trying to build a 32-bit glibc that will be part of 
> this toolchain.
>
> Now, when I go to build, there is a new folder that got created in 
> tmp-glibc for the lib32-* files:
>
> tmp-glibc/work/x86-oemllib32-linux/lib32-*
>
> and upon entering the lib32-glibc folder, I'm seeing this:
>
> tmp-glibc/work/x86-oemllib32-linux/lib32-glibc/2.25-r0/build-x86_64-oemllib32-linux/
>
> I'm just not sure if that "x86_64" in the build folder name is correct.

Hi Nicholas,

It seems not right that it should be "build-i686-pokymllib32-linux". Do 
you have any other config? And do you use Yocto
that your TARGET_VENDOR is 'oe' but the default value is 'poky'. And 
please check var TARGET_SYS from output of 'bitbake -e',
you may find where "x86_64" is from.

Regards,
Kai




> I may be doing something entirely wrong as well; this is my first time 
> using multilib. As an FYI, I have the following to my local.conf:
> require conf/multilib.conf
> MULTILIBS = "multilib:lib32"
> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
>
> Any clarification is appreciated.
>
> On Wed, Dec 12, 2018 at 12:04 PM Burton, Ross <ross.burton@intel.com 
> <mailto:ross.burton@intel.com>> wrote:
>
>     On Wed, 12 Dec 2018 at 16:59, Nicholas Tsirakis
>     <niko.tsirakis@gmail.com <mailto:niko.tsirakis@gmail.com>> wrote:
>     > I'm trying to build a 32-bit toolchain for my 64-bit image using
>     multilib and was hoping someone could confirm something for me. I
>     am seeing issues when building lib32-glibc, and I can't tell if
>     it's attempting to build properly. The resulting build files are
>     created in a folder called "x86_64-oemllib32-..." - is this
>     correct? Or should it be "x86-oemllib32" being that it's a 32-bit
>     library?
>
>     Can you clarify here was should be 32-bit and what should be 64-bit?
>
>     Ross
>
>

-- 
Kai Kang


--------------66F55A213E339362CC4340AD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 2018/12/13 上午1:16, Nicholas Tsirakis
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAFqpmVKKGb1J63Cm_e4Ozhicx21Hn9Gy8WPD8WkN7G-dxkDuVg@mail.gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div>Sure, thanks for the reply. The image itself should
                is 64 bit and I want to add an additional toolchain to
                my image that can run 32-bit binaries. I am trying to
                build a 32-bit glibc that will be part of this
                toolchain.</div>
              <div><br>
                Now, when I go to build, there is a new folder that got
                created in tmp-glibc for the lib32-* files:</div>
              <div><br>
              </div>
              <div>tmp-glibc/work/x86-oemllib32-linux/lib32-*<br>
                <br>
              </div>
              <div>and upon entering the lib32-glibc folder, I'm seeing
                this:</div>
              <div><br>
              </div>
              <div>tmp-glibc/work/x86-oemllib32-linux/lib32-glibc/2.25-r0/build-x86_64-oemllib32-linux/<br>
                <br>
              </div>
              <div>I'm just not sure if that "x86_64" in the build
                folder name is correct.</div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Hi Nicholas,</p>
    <p>It seems not right that it should be
      "build-i686-pokymllib32-linux". Do you have any other config? And
      do you use Yocto<br>
      that your TARGET_VENDOR is 'oe' but the default value is 'poky'.
      And please check var TARGET_SYS from output of 'bitbake -e', <br>
      you may find where "x86_64" is from.</p>
    <p>Regards,<br>
      Kai<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:CAFqpmVKKGb1J63Cm_e4Ozhicx21Hn9Gy8WPD8WkN7G-dxkDuVg@mail.gmail.com">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div> I may be doing something entirely wrong as well;
                this is my first time using multilib. As an FYI, I have
                the following to my local.conf:
                <div>require conf/multilib.conf<br>
                  MULTILIBS = "multilib:lib32"<br>
                  DEFAULTTUNE_virtclass-multilib-lib32 = "x86"<br>
                  <br>
                </div>
                <div>Any clarification is appreciated.<br>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr">On Wed, Dec 12, 2018 at 12:04 PM Burton, Ross
          &lt;<a href="mailto:ross.burton@intel.com"
            moz-do-not-send="true">ross.burton@intel.com</a>&gt; wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          Wed, 12 Dec 2018 at 16:59, Nicholas Tsirakis &lt;<a
            href="mailto:niko.tsirakis@gmail.com" target="_blank"
            moz-do-not-send="true">niko.tsirakis@gmail.com</a>&gt;
          wrote:<br>
          &gt; I'm trying to build a 32-bit toolchain for my 64-bit
          image using multilib and was hoping someone could confirm
          something for me. I am seeing issues when building
          lib32-glibc, and I can't tell if it's attempting to build
          properly. The resulting build files are created in a folder
          called "x86_64-oemllib32-..." - is this correct? Or should it
          be "x86-oemllib32" being that it's a 32-bit library?<br>
          <br>
          Can you clarify here was should be 32-bit and what should be
          64-bit?<br>
          <br>
          Ross<br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
Kai Kang</pre>
  </body>
</html>

--------------66F55A213E339362CC4340AD--
