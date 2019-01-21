Return-Path: <peter@berginkonsult.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C493E009A0; Mon, 21 Jan 2019 00:35:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.30.210.183 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Mon, 21 Jan 2019 00:35:06 PST
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com
	(mailrelay2-1.pub.mailoutpod1-cph3.one.com [46.30.210.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1666BE009A0
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 00:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20140924;
	h=content-type:in-reply-to:mime-version:date:message-id:cc:from:references:to:
	subject:from; bh=pGo5sLaCNE7xLLZPwPclbZx1zyybuHuPpv9TMyzZQt4=;
	b=0OQMLK/JMb/rBos7+EdkaFVLfwD/22cXJtNUi1u1ebvCSuevECQM6KLL9/FqRKpz7d7z3ciuiU5YN
	azpPuqnRRe1nQcVfsBtQWpcrCAuqbnLKojo6NVvXDmdalVo0BwBlDydya4VZYKx2AlTz2fUYeJLeB4
	8iJCEwZurbNDXS0g=
X-HalOne-Cookie: e1785b3e9f2c600f24d51367998d1ab945d0ba65
X-HalOne-ID: 4df776b6-1d57-11e9-8f62-d0431ea8a290
Received: from [192.168.0.101] (unknown [83.182.161.149])
	by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 4df776b6-1d57-11e9-8f62-d0431ea8a290;
	Mon, 21 Jan 2019 08:34:02 +0000 (UTC)
To: zoran.stojsavljevic@gmail.com
References: <CAGAf8LzrskfFOqq78ztWRy7eqeE4uWh8=AbkS9X7gkmGx_9A6Q@mail.gmail.com>
From: Peter Bergin <peter@berginkonsult.se>
Message-ID: <8b846036-b9a8-1052-b5a3-283495df7419@berginkonsult.se>
Date: Mon, 21 Jan 2019 09:34:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAGAf8LzrskfFOqq78ztWRy7eqeE4uWh8=AbkS9X7gkmGx_9A6Q@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Systemd service recipe fails while booting from initramfs
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
X-List-Received-Date: Mon, 21 Jan 2019 08:35:07 -0000
Content-Type: multipart/alternative;
	boundary="------------30D7704397C6F85F5E3B219F"
Content-Language: en-US

--------------30D7704397C6F85F5E3B219F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2019-01-21 07:56, Zoran Stojsavljevic wrote:
> Hello to all,
>
> I have added to my local.conf the following lines in order to port 
> systemd service
> in YOCTO (Thud release):
>
> _/## Add systemd service
> VIRTUAL-RUNTIME_init_manager = "systemd"
> VIRTUAL-RUNTIME_dev_manager = "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
> VIRTUAL-RUNTIME_initscripts = ""
> DISTRO_FEATURES_append = " nfs systemd"/_
>
> By executing bitbake -k core-image-minimal command, all went good 
> (although it rebuilt
> almost the whole build - circa 80% of it), which is understandable.
>
> While downloading initramfs on the target system, while bringing 
> kernel up, the following
> happened (actual log):
> [    0.000000] Kernel command line: console=ttyO0,115200n8 
> root=/dev/ram0 ip=dhcp
> ... [snap]...
> [  114.064032] Sending DHCP requests ...... timed out!
> [  190.652571] IP-Config: Auto-configuration of network failed
> [  190.663158] Freeing unused kernel memory: 1024K
> [  190.668661] Run /init as init process
> System time before build time, advancing clock.
> /*Failed to mount tmpfs at /sys/fs/cgroup: No such file or directory
> Failed to mount cgroup at /sys/fs/cgroup/systemd: No such file or 
> directory
> [!!!!!!] */Failed to mount API filesystems, freezing.
> /*Freezing execution.*/
> [  192.984442] random: crng init done
>
> I have two questions (please, could you provide to me some help here):
> [1] How to fix this run-time bug (what I should do in the configuration)?
>      I found some interesting explanation about possible solution 
> /(PACKAGECONFIG)/:
> https://lists.yoctoproject.org/pipermail/yocto/2013-November/016965.html

Could be that you miss some required kernel configurations. See 
systemd/README 
(https://github.com/systemd/systemd/blob/8464d9e0dc506538fd0f2d1d667966750cb9cf30/README#L38)
> [2] I would like also to include networkctl service (should I do 
> something specific to
>      enable it, or this is done by default enabling systemd)?
PACKAGECONFIG will control which features you have enabled for systemd. 
To check which ones you have you can execute 'bitbake -e systemd | grep 
^PACKAGECONFIG='. If you want to change this config you can adjust 
PACKAGECONFIG in your own systemd_%.bbappend file.

I guess networkd is enabled default with the systemd recipe. But check 
it out. There are several way to see which files that are included in 
your image. I use buildhistory.bbclass in all my build which make it 
easy too look up what's included.

Regards,
/Peter


--------------30D7704397C6F85F5E3B219F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 2019-01-21 07:56, Zoran
      Stojsavljevic wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGAf8LzrskfFOqq78ztWRy7eqeE4uWh8=AbkS9X7gkmGx_9A6Q@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div dir="ltr">
                <div>Hello to all,</div>
                <div><br>
                </div>
                <div>I have added to my local.conf the following lines
                  in order to port systemd service</div>
                <div>in YOCTO (Thud release):</div>
                <div><br>
                </div>
                <div><u><i>## Add systemd service<br>
                      VIRTUAL-RUNTIME_init_manager = "systemd"<br>
                      VIRTUAL-RUNTIME_dev_manager = "systemd"<br>
                      DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"<br>
                      VIRTUAL-RUNTIME_initscripts = ""<br>
                      DISTRO_FEATURES_append = " nfs systemd"</i></u></div>
                <div><br>
                </div>
                <div>By executing bitbake -k core-image-minimal command,
                  all went good (although it rebuilt</div>
                <div>almost the whole build - circa 80% of it), which is
                  understandable.</div>
                <div><br>
                </div>
                <div>While downloading initramfs on the target system,
                  while bringing kernel up, the following</div>
                <div>happened (actual log):</div>
                <div>[    0.000000] Kernel command line:
                  console=ttyO0,115200n8 root=/dev/ram0 ip=dhcp</div>
                <div>... [snap]...</div>
                <div>[  114.064032] Sending DHCP requests ...... timed
                  out!<br>
                  [  190.652571] IP-Config: Auto-configuration of
                  network failed<br>
                  [  190.663158] Freeing unused kernel memory: 1024K<br>
                  [  190.668661] Run /init as init process<br>
                  System time before build time, advancing clock.<br>
                  <span style="color:rgb(255,0,0)"><i><b>Failed to mount
                        tmpfs at /sys/fs/cgroup: No such file or
                        directory<br>
                        Failed to mount cgroup at
                        /sys/fs/cgroup/systemd: No such file or
                        directory<br>
                        [!!!!!!] </b></i></span>Failed to mount API
                  filesystems, freezing.<br>
                  <span style="color:rgb(255,0,0)"><i><b>Freezing
                        execution.</b></i></span><br>
                  [  192.984442] random: crng init done<br>
                  <br>
                </div>
                <div>I have two questions (please, could you provide to
                  me some help here):</div>
                <div>[1] How to fix this run-time bug (what I should do
                  in the configuration)?</div>
                <div>     I found some interesting explanation about
                  possible solution <i>(PACKAGECONFIG)</i>:</div>
                <div>     <a
href="https://lists.yoctoproject.org/pipermail/yocto/2013-November/016965.html"
                    target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/pipermail/yocto/2013-November/016965.html</a><br>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Could be that you miss some required kernel configurations. See
    systemd/README
(<a class="moz-txt-link-freetext" href="https://github.com/systemd/systemd/blob/8464d9e0dc506538fd0f2d1d667966750cb9cf30/README#L38">https://github.com/systemd/systemd/blob/8464d9e0dc506538fd0f2d1d667966750cb9cf30/README#L38</a>)<br>
    <blockquote type="cite"
cite="mid:CAGAf8LzrskfFOqq78ztWRy7eqeE4uWh8=AbkS9X7gkmGx_9A6Q@mail.gmail.com">
      <div dir="ltr">
        <div dir="ltr">
          <div dir="ltr">
            <div dir="ltr">
              <div dir="ltr">
                <div>[2] I would like also to include networkctl service
                  (should I do something specific to</div>
                <div>     enable it, or this is done by default enabling
                  systemd)?</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    PACKAGECONFIG will control which features you have enabled for
    systemd. To check which ones you have you can execute 'bitbake -e
    systemd | grep ^PACKAGECONFIG='. If you want to change this config
    you can adjust PACKAGECONFIG in your own systemd_%.bbappend file.<br>
    <br>
    I guess networkd is enabled default with the systemd recipe. But
    check it out. There are several way to see which files that are
    included in your image. I use buildhistory.bbclass in all my build
    which make it easy too look up what's included.<br>
    <br>
    Regards,<br>
    /Peter<br>
    <br>
  </body>
</html>

--------------30D7704397C6F85F5E3B219F--
