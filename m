Return-Path: <jacob2.chen@rock-chips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB31DE009F3; Thu,  9 Feb 2017 20:10:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [211.150.99.134 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from regular1.263xmail.com (regular1.263xmail.com [211.150.99.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44F93E009CF
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 20:10:47 -0800 (PST)
Received: from jacob2.chen?rock-chips.com (unknown [192.168.165.141])
	by regular1.263xmail.com (Postfix) with ESMTP id 7242F911C;
	Fri, 10 Feb 2017 12:10:40 +0800 (CST)
X-263anti-spam: KSV:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ABS-CHECKED: 4
Received: from smtp.263.net (sg-smtp01.263.net [54.255.195.220])
	by smtp.263.net (Postfix) with ESMTP id 6EC353D6;
	Fri, 10 Feb 2017 12:10:39 +0800 (CST)
Received: from [172.20.10.10] (localhost.localdomain [127.0.0.1])
	by smtp.263.net (Postfix) with ESMTP id 9A036DF304;
	Fri, 10 Feb 2017 12:10:39 +0800 (CST)
X-RL-SENDER: jacob2.chen@rock-chips.com
X-FST-TO: eddie.cai@rock-chips.com
X-SENDER-IP: 202.68.200.158
X-LOGIN-NAME: jacob2.chen@rock-chips.com
X-UNIQUE-TAG: <42ee2a281c1c27e1e7deeb5937ba11ac>
X-ATTACHMENT-NUM: 0
X-SENDER: jacob2.chen@rock-chips.com
X-DNS-TYPE: 0
Received: from [172.20.10.10] (unknown [202.68.200.158])
	by smtp.263.net (Postfix) whith ESMTP id 7480J2PO05;
	Fri, 10 Feb 2017 12:10:40 +0800 (CST)
To: Romain Perier <romain.perier@gmail.com>,
	Eddie Cai <eddie.cai.linux@gmail.com>
References: <1484820572-11891-1-git-send-email-jacob-chen@iotwrt.com>
	<1484820572-11891-4-git-send-email-jacob-chen@iotwrt.com>
	<CAJrj+DP7XGadbn-03EuAy4WAKgV=Pq67AjKghfuzR5gMbSpxLA@mail.gmail.com>
	<CABgxDo+jYOL2tq9A71kSJgNiuYkCzzHnBES1z-mR1xO0E8G-XQ@mail.gmail.com>
From: Jacob Chen <jacob2.chen@rock-chips.com>
Message-ID: <85659890-32c8-9122-b014-82d56cc81ae0@rock-chips.com>
Date: Fri, 10 Feb 2017 12:10:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CABgxDo+jYOL2tq9A71kSJgNiuYkCzzHnBES1z-mR1xO0E8G-XQ@mail.gmail.com>
Cc: yocto@yoctoproject.org, Jacob Chen <jacob-chen@iotwrt.com>,
	Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [PATCH 3/7] machine: firefly: use linux-rockchip by default
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
X-List-Received-Date: Fri, 10 Feb 2017 04:10:54 -0000
Content-Type: multipart/alternative;
	boundary="------------78A4BD0A0DA0747D943AF408"

--------------78A4BD0A0DA0747D943AF408
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,


Romain Perier wrote on 2017年01月27日 23:27:
> Hi all,
>
> 1. Add more details to your commits
> 2. As I said in a previous patch, I don't like this... rk-linux.inc , 
> the name of the file is not clear at all... and I don't like its 
> content for now.
> 3. There is really a small differences between a kernel mainline and 
> your kernel rk3288 nowadays... Do you have a working VPU in your 
> kernel ? perhaps that it might be interesting for this... (if I 
> remember, it's not supported in upstream)
>

Yes,  we will push all changes from 4.4 kernel to upstream,  but there 
are many things are not being accepted in upstream ( like VPU, GPU, ISP, 
RGA, special dvfs code, special vop code).

I still hope to use this 4.4 kernel by default because our Linux support 
is mostly about media and graphics which can't work with mainline kernel.

Of course, we also hope to make them work with mainline, just it have 
too much trouble to make upstream accepted them. There is a people who 
makes those drivers buildable out-of-tree  on mainline kernel 
(https://github.com/phhusson/rockchip_forwardports), I think it's a good 
way, maybe we can support it in meta-rockchip.


>
> Thanks,
> Romain
>
> 2017-01-19 15:40 GMT+01:00 Eddie Cai <eddie.cai.linux@gmail.com 
> <mailto:eddie.cai.linux@gmail.com>>:
>
>     Hi
>
>     2017-01-19 18:09 GMT+08:00 Jacob Chen <jacob-chen@iotwrt.com
>     <mailto:jacob-chen@iotwrt.com>>:
>     > This is the kernel vendor that supports all hw components for
>     this board,
>     > so we use it by default.
>     The title and commit message didn't match the your content. Linux
>     rockchip should refer to http://github.com/linux-rockchip
>     <http://github.com/linux-rockchip>.
>     firefly-rk3288.conf already using http://github.com/linux-rockchip
>     <http://github.com/linux-rockchip>
>     >
>     > Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com
>     <mailto:jacob-chen@iotwrt.com>>
>     > ---
>     >  conf/machine/firefly-rk3288.conf | 4 ++++
>     >  1 file changed, 4 insertions(+)
>     >
>     > diff --git a/conf/machine/firefly-rk3288.conf
>     b/conf/machine/firefly-rk3288.conf
>     > index 8fa005d..47e63e1 100644
>     > --- a/conf/machine/firefly-rk3288.conf
>     > +++ b/conf/machine/firefly-rk3288.conf
>     > @@ -7,4 +7,8 @@
>     >  #http://www.t-firefly.com/en/
>     >
>     >  include conf/machine/include/rk3288.inc
>     > +include conf/machine/include/rk-linux.inc
>     > +
>     >  KERNEL_DEVICETREE = "rk3288-firefly.dtb"
>     > +
>     > +UBOOT_MACHINE = "firefly-rk3288_defconfig"
>     > --
>     > 2.7.4
>     >
>     > --
>     > _______________________________________________
>     > yocto mailing list
>     > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     > https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>


--------------78A4BD0A0DA0747D943AF408
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi,<br>
    </p>
    <br>
    <div class="moz-cite-prefix">Romain Perier wrote on 2017年01月27日
      23:27:<br>
    </div>
    <blockquote
cite="mid:CABgxDo+jYOL2tq9A71kSJgNiuYkCzzHnBES1z-mR1xO0E8G-XQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>
            <div>
              <div>
                <div>Hi all,<br>
                  <br>
                </div>
                1. Add more details to your commits<br>
              </div>
              2. As I said in a previous patch, I don't like this...
              rk-linux.inc , the name of the file is not clear at all...
              and I don't like its content for now.<br>
            </div>
            3. There is really a small differences between a kernel
            mainline and your kernel rk3288 nowadays... Do you have a
            working VPU in your kernel ? perhaps that it might be
            interesting for this... (if I remember, it's not supported
            in upstream)<br>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Yes,  we will push all changes from 4.4 kernel to upstream,  but
    there are many things are not being accepted in upstream ( like VPU,
    GPU, ISP, RGA, special dvfs code, special vop code). <br>
    <br>
    I still hope to use this 4.4 kernel by default because our Linux
    support is mostly about media and graphics which can't work with
    mainline kernel. <br>
    <br>
    Of course, we also hope to make them work with mainline, just it
    have too much trouble to make upstream accepted them. There is a
    people who makes those drivers buildable out-of-tree  on mainline
    kernel (<a class="moz-txt-link-freetext" href="https://github.com/phhusson/rockchip_forwardports">https://github.com/phhusson/rockchip_forwardports</a>), I think
    it's a good way, maybe we can support it in meta-rockchip.<span
      style="color: rgb(51, 51, 51); font-family: -apple-system,
      BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial,
      sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI
      Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;
      font-style: normal; font-variant-ligatures: normal;
      font-variant-caps: normal; font-weight: normal; letter-spacing:
      normal; orphans: 2; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255); display: inline !important;
      float: none;"></span><br>
    <br>
    <br>
    <blockquote
cite="mid:CABgxDo+jYOL2tq9A71kSJgNiuYkCzzHnBES1z-mR1xO0E8G-XQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div><br>
          </div>
          Thanks,<br>
        </div>
        Romain<br>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">2017-01-19 15:40 GMT+01:00 Eddie Cai <span
            dir="ltr">&lt;<a moz-do-not-send="true"
              href="mailto:eddie.cai.linux@gmail.com" target="_blank">eddie.cai.linux@gmail.com</a>&gt;</span>:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi<br>
            <span class=""><br>
              2017-01-19 18:09 GMT+08:00 Jacob Chen &lt;<a
                moz-do-not-send="true"
                href="mailto:jacob-chen@iotwrt.com">jacob-chen@iotwrt.com</a>&gt;:<br>
              &gt; This is the kernel vendor that supports all hw
              components for this board,<br>
              &gt; so we use it by default.<br>
            </span>The title and commit message didn't match the your
            content. Linux<br>
            rockchip should refer to <a moz-do-not-send="true"
              href="http://github.com/linux-rockchip" rel="noreferrer"
              target="_blank">http://github.com/linux-<wbr>rockchip</a>.<br>
            firefly-rk3288.conf already using <a moz-do-not-send="true"
              href="http://github.com/linux-rockchip" rel="noreferrer"
              target="_blank">http://github.com/linux-<wbr>rockchip</a><br>
            <div class="HOEnZb">
              <div class="h5">&gt;<br>
                &gt; Signed-off-by: Jacob Chen &lt;<a
                  moz-do-not-send="true"
                  href="mailto:jacob-chen@iotwrt.com">jacob-chen@iotwrt.com</a>&gt;<br>
                &gt; ---<br>
                &gt;  conf/machine/firefly-rk3288.<wbr>conf | 4 ++++<br>
                &gt;  1 file changed, 4 insertions(+)<br>
                &gt;<br>
                &gt; diff --git a/conf/machine/firefly-rk3288.<wbr>conf
                b/conf/machine/firefly-rk3288.<wbr>conf<br>
                &gt; index 8fa005d..47e63e1 100644<br>
                &gt; --- a/conf/machine/firefly-rk3288.<wbr>conf<br>
                &gt; +++ b/conf/machine/firefly-rk3288.<wbr>conf<br>
                &gt; @@ -7,4 +7,8 @@<br>
                &gt;  #<a moz-do-not-send="true"
                  href="http://www.t-firefly.com/en/" rel="noreferrer"
                  target="_blank">http://www.t-firefly.com/en/</a><br>
                &gt;<br>
                &gt;  include conf/machine/include/rk3288.<wbr>inc<br>
                &gt; +include conf/machine/include/rk-linux.<wbr>inc<br>
                &gt; +<br>
                &gt;  KERNEL_DEVICETREE = "rk3288-firefly.dtb"<br>
                &gt; +<br>
                &gt; +UBOOT_MACHINE = "firefly-rk3288_defconfig"<br>
                &gt; --<br>
                &gt; 2.7.4<br>
                &gt;<br>
              </div>
            </div>
            <span class="HOEnZb"><font color="#888888">&gt; --<br>
                &gt; ______________________________<wbr>_________________<br>
                &gt; yocto mailing list<br>
                &gt; <a moz-do-not-send="true"
                  href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                &gt; <a moz-do-not-send="true"
                  href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
                --<br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a moz-do-not-send="true"
                  href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                <a moz-do-not-send="true"
                  href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------78A4BD0A0DA0747D943AF408--
