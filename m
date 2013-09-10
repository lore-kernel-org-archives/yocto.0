Return-Path: <jc@vtkloud.com>
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81B35E0156E
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:27:16 -0700 (PDT)
Received: by mail-we0-f175.google.com with SMTP id q59so6226678wes.20
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:27:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type;
	bh=an/14ah+jdu+zI/W7RYCiW7A0JG7Acag4zmSGf1CNec=;
	b=VrXcOBpHL68Tc5+kX0vRKcj0yCg509LDuA9UuR+m3WpMbhfRrOsFcBKsAr0PXeuu1z
	v69NDhzzDyW1xJbLEeJqul6feVzGIU+BNBy1LKG5OkuwvO7GMoVeZTsRm58w7rmsn7LX
	SE0DupGdJx9yS5GhXeKep0Jc+8p8umyH5oxzt82ipxtpuSECLeApIeTY+iyFiwE2y6iz
	i0SIVJBac5UghZXmdn78Jp2cyMr6e7jGMcN9gNUgzB2A9ZOtDvLNzSxTqar1bDSB/TCN
	H5TN/VaXyjaFn12ePRjHJTaav1eZjbjhGzbahsAnnv5ooovJYSevBBdbNZzgu8z0qIiM
	VIqA==
X-Gm-Message-State: ALoCoQlgEiUmvZKbhe+X1JNuNNCTq+3BAA/EYy2K6xwQw/8hK1DM3JTP1ZkovkTc70H38VarQQft
X-Received: by 10.194.178.166 with SMTP id cz6mr292605wjc.53.1378798035505;
	Tue, 10 Sep 2013 00:27:15 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id fz8sm1441829wic.0.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 10 Sep 2013 00:27:14 -0700 (PDT)
Message-ID: <522EC9D0.5080700@vtkloud.com>
Date: Tue, 10 Sep 2013 09:27:12 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Jegan Chandru <pcjegan@gmail.com>
References: <522EBE6C.5060108@vtkloud.com>
	<CAAA4K6JaJF=wO3EZQMVsDTZsJS5DwZx0wv5wmKaSHegn_iPrEw@mail.gmail.com>
	<CAAA4K6KUttDhNFn7ygOOvmcpKhfDCTb_OUjULwRrwr0zQOGPdw@mail.gmail.com>
In-Reply-To: <CAAA4K6KUttDhNFn7ygOOvmcpKhfDCTb_OUjULwRrwr0zQOGPdw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: misleading dependencies between packages
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
X-List-Received-Date: Tue, 10 Sep 2013 07:27:19 -0000
Content-Type: multipart/alternative;
	boundary="------------040401030907060405040501"

--------------040401030907060405040501
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi JCP

Thanks for your information, here are the next questions:
libuuid is provided by util-linux. Check in meta/recipes-core/util-linux 
for more details.
> r3 is PR that util-linux has in dylan 9.0.1. Unless you change the PR, 
> it will be r3 only. I am not sure how you end up with r5.
> May be you need to (re)build util-linux if you need libuuid. Also You 
> should check with the dependencies,
> I see apr package which depends on util-linux.
>

Just to make sure, I did :
bitbake util-linux -c cleanall
bitbake util-linux

It will try to fetch:
0: util-linux-2.22.2-r5 do_fetch (pid 2420)

Which explains why I end up with a -r5 package

Looking at util-linux.inc, I see it tries to download the
SRC_URI = 
"${KERNELORG_MIRROR}/linux/utils/util-linux/v${MAJOR_VERSION}/util-linux-${PV}.tar.bz2 
\


So ${PV} is set somewhere else to r5, but not in this package. I don't 
know why/how it is fixed to something else. Could it be an issue like PV 
is set by another package, and not reset? Otherwise I can't figure how 
it comes out as "r5".

In the bb file I have ${PR} set to "r3". May be it should be what 
SRC_URI uses?

Jay


> Hope this helps.
>
> Cheers,
>
>
> On Tue, Sep 10, 2013 at 12:08 PM, JC <jc@vtkloud.com 
> <mailto:jc@vtkloud.com>> wrote:
>
>     Hi,
>
>     I have many issues with Apache2 package so I thought I would
>     reinstall it. I used smart (smart install apache2) and here is the
>     very strange issue I got:
>
>     Installing packages (20):
>     apache2-2.4.3-r1@armv6_vfp libgdbm4-1.10-r3@armv6_vfp
>     busybox-1.20.2-r8@armv6_vfp libpcre1-8.32-r1@armv6_vfp
>     busybox-syslog-1.20.2-r8@armv6_vfp libperl5-5.14.3-r1@armv6_vfp
>     busybox-udhcpc-1.20.2-r8@armv6_vfp libssl1.0.0-1.0.1e-r15.0@armv6_vfp
>     libapr-1-0-1.4.6-r2@armv6_vfp libuuid1-2.22.2-r3@armv6_vfp
>     libaprutil-1-0-1.5.1-r0@armv6_vfp libz1-1.2.7-r0@armv6_vfp
>     libc6-2.17-r3@armv6_vfp openssl-1.0.1e-r15.0@armv6_vfp
>     libcrypto1.0.0-1.0.1e-r15.0@armv6_vfp perl-5.14.3-r1@armv6_vfp
>     libexpat1-2.1.0-r0@armv6_vfp
>     update-alternatives-cworth-1:0.1.8+svnr649-r13.0@armv6_vfp
>     libgcc1-4.7.2-r20@armv6_vfp update-rc.d-0.7-r5@all
>
>     4.8MB of package files are needed. 9.7MB will be used.
>
>     Confirm changes? (Y/n): Y
>
>     Fetching packages...
>     [Snip lots of downloads]
>     -> http://192.168.0.50:81/rpm/armv6_vfp/apache2-2.4.3-r1.armv6_vfp.rpm
>     apache2-2.4.3-r1.armv6_vfp.rpm
>     ##############################################################################
>     [ 95%]
>
>     error: Failed to download packages:
>     error:
>     http://192.168.0.50:81/rpm/armv6_vfp/libuuid1-2.22.2-r3.armv6_vfp.rpm:
>     File not found
>
>
>     And indeed, I do not have r3 of libuuid1 but r5. This is not the
>     first time I run in this issue, it's unfortunately quite common.
>     And I can't even figure who is generating libuuid1 :(
>
>     Any idea?
>
>     Regards
>     Jay
>
>
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> -- 
> JCP
>
>
>
> -- 
> JCP


--------------040401030907060405040501
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div>Hi JCP<br>
      <br>
      Thanks for your information, here are the next questions:<br>
      libuuid is provided by util-linux. Check in
      meta/recipes-core/util-linux for more details.</div>
    <blockquote
cite="mid:CAAA4K6KUttDhNFn7ygOOvmcpKhfDCTb_OUjULwRrwr0zQOGPdw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_quote">
          <div dir="ltr">
            <div>r3 is PR that util-linux has in dylan 9.0.1. Unless you
              change the PR, it will be r3 only. I am not sure how you
              end up with r5.</div>
            <div>May be you need to (re)build util-linux if you need
              libuuid. Also You should check with the dependencies,&nbsp;</div>
            <div>I see apr package which depends on util-linux.</div>
            <div><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Just to make sure, I did :<br>
    bitbake util-linux -c cleanall<br>
    bitbake util-linux<br>
    <br>
    It will try to fetch:<br>
    0: util-linux-2.22.2-r5 do_fetch (pid 2420)<br>
    <br>
    Which explains why I end up with a -r5 package<br>
    <br>
    Looking at util-linux.inc, I see it tries to download the<br>
    SRC_URI =
    "${KERNELORG_MIRROR}/linux/utils/util-linux/v${MAJOR_VERSION}/util-linux-${PV}.tar.bz2
    \<br>
    <br>
    <br>
    So ${PV} is set somewhere else to r5, but not in this package. I
    don't know why/how it is fixed to something else. Could it be an
    issue like PV is set by another package, and not reset? Otherwise I
    can't figure how it comes out as "r5".<br>
    <br>
    In the bb file I have ${PR} set to "r3". May be it should be what
    SRC_URI uses? <br>
    <br>
    Jay<br>
    <br>
    <br>
    <blockquote
cite="mid:CAAA4K6KUttDhNFn7ygOOvmcpKhfDCTb_OUjULwRrwr0zQOGPdw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_quote">
          <div dir="ltr">
            <div>Hope this helps.</div>
            <div>
              <br>
            </div>
            <div>Cheers,</div>
          </div>
          <div class="gmail_extra">
            <div>
              <div class="h5"><br>
                <br>
                <div class="gmail_quote">On Tue, Sep 10, 2013 at 12:08
                  PM, JC <span dir="ltr">&lt;<a moz-do-not-send="true"
                      href="mailto:jc@vtkloud.com" target="_blank">jc@vtkloud.com</a>&gt;</span>
                  wrote:<br>
                  <blockquote class="gmail_quote" style="margin:0 0 0
                    .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
                    <br>
                    I have many issues with Apache2 package so I thought
                    I would reinstall it. I used smart (smart install
                    apache2) and here is the very strange issue I got:<br>
                    <br>
                    Installing packages (20):<br>
                    apache2-2.4.3-r1@armv6_vfp
                    libgdbm4-1.10-r3@armv6_vfp<br>
                    busybox-1.20.2-r8@armv6_vfp
                    libpcre1-8.32-r1@armv6_vfp<br>
                    busybox-syslog-1.20.2-r8@armv6_vfp
                    libperl5-5.14.3-r1@armv6_vfp<br>
                    busybox-udhcpc-1.20.2-r8@armv6_vfp
                    libssl1.0.0-1.0.1e-r15.0@armv6_vfp<br>
                    libapr-1-0-1.4.6-r2@armv6_vfp
                    libuuid1-2.22.2-r3@armv6_vfp<br>
                    libaprutil-1-0-1.5.1-r0@armv6_vfp
                    libz1-1.2.7-r0@armv6_vfp<br>
                    libc6-2.17-r3@armv6_vfp
                    openssl-1.0.1e-r15.0@armv6_vfp<br>
                    libcrypto1.0.0-1.0.1e-r15.0@armv6_vfp
                    perl-5.14.3-r1@armv6_vfp<br>
                    libexpat1-2.1.0-r0@armv6_vfp
                    update-alternatives-cworth-1:0.1.8+svnr649-r13.0@armv6_vfp<br>
                    libgcc1-4.7.2-r20@armv6_vfp update-rc.d-0.7-r5@all<br>
                    <br>
                    4.8MB of package files are needed. 9.7MB will be
                    used.<br>
                    <br>
                    Confirm changes? (Y/n): Y<br>
                    <br>
                    Fetching packages...<br>
                    [Snip lots of downloads]<br>
                    -&gt; <a moz-do-not-send="true"
href="http://192.168.0.50:81/rpm/armv6_vfp/apache2-2.4.3-r1.armv6_vfp.rpm"
                      target="_blank">http://192.168.0.50:81/rpm/armv6_vfp/apache2-2.4.3-r1.armv6_vfp.rpm</a><br>
                    apache2-2.4.3-r1.armv6_vfp.rpm
                    ##############################################################################
                    [ 95%]<br>
                    <br>
                    error: Failed to download packages:<br>
                    error: <a moz-do-not-send="true"
href="http://192.168.0.50:81/rpm/armv6_vfp/libuuid1-2.22.2-r3.armv6_vfp.rpm"
                      target="_blank">http://192.168.0.50:81/rpm/armv6_vfp/libuuid1-2.22.2-r3.armv6_vfp.rpm</a>:
                    File not found<br>
                    <br>
                    <br>
                    And indeed, I do not have r3 of libuuid1 but r5.
                    This is not the first time I run in this issue, it's
                    unfortunately quite common. And I can't even figure
                    who is generating libuuid1 :(<br>
                    <br>
                    Any idea?<br>
                    <br>
                    Regards<br>
                    Jay<br>
                    <br>
                    <br>
                    _______________________________________________<br>
                    yocto mailing list<br>
                    <a moz-do-not-send="true"
                      href="mailto:yocto@yoctoproject.org"
                      target="_blank">yocto@yoctoproject.org</a><br>
                    <a moz-do-not-send="true"
                      href="https://lists.yoctoproject.org/listinfo/yocto"
                      target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
                  </blockquote>
                </div>
                <br>
                <br clear="all">
                <div><br>
                </div>
              </div>
            </div>
            <span class="HOEnZb"><font color="#888888">-- <br>
                JCP
              </font></span></div>
        </div>
        <br>
        <br clear="all">
        <div><br>
        </div>
        -- <br>
        JCP
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------040401030907060405040501--
