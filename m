Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E084E00B8E; Sat, 10 Aug 2019 06:14:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [188.165.44.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 8400 seconds by postgrey-1.32 at yocto-www;
	Sat, 10 Aug 2019 06:14:33 PDT
Received: from 5.mo4.mail-out.ovh.net (5.mo4.mail-out.ovh.net [188.165.44.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ED70E00AB4
	for <yocto@yoctoproject.org>; Sat, 10 Aug 2019 06:14:33 -0700 (PDT)
Received: from player738.ha.ovh.net (unknown [10.109.146.143])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id D5231200012
	for <yocto@yoctoproject.org>; Sat, 10 Aug 2019 10:26:21 +0200 (CEST)
Received: from 3mdeb.com (89-66-81-159.dynamic.chello.pl [89.66.81.159])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player738.ha.ovh.net (Postfix) with ESMTPSA id 716838E1ABBD;
	Sat, 10 Aug 2019 08:26:20 +0000 (UTC)
To: www <ouyangxuan10@163.com>, yocto@yoctoproject.org
References: <b9d05c.477a.16c7a667413.Coremail.ouyangxuan10@163.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <31226eab-9d1d-20de-0edf-83100afb6919@3mdeb.com>
Date: Sat, 10 Aug 2019 10:26:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b9d05c.477a.16c7a667413.Coremail.ouyangxuan10@163.com>
X-Ovh-Tracer-Id: 9200009616157322921
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudduledgtdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Subject: Re: ask a question about filesystem in yocto
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
X-List-Received-Date: Sat, 10 Aug 2019 13:14:35 -0000
Content-Type: multipart/alternative;
	boundary="------------CE8A49F151610EEAEC2456AE"
Content-Language: en-US

--------------CE8A49F151610EEAEC2456AE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 10.08.2019 09:20, www wrote:
> Dear all,
Hi,
>
> I'm new learner and user of yocto. When I used it, I encountered a 
> problem. I don't know how to resolve it, so I ask for help.
> the problem is how can I create a new partition on yocto? if I have a 
> package named webui, it can be generate several execute files and 
> configuration files, the execute files will be install into 
> filesystem, such as "/usr/bin", and be packed to rofs. but I don't 
> want pack the configuration files  to rofs, and I want create a new 
> image and the image will be a partition of the global image, and pack 
> the configuration file to it, when the system start running, it can be 
> separate    mount to the filesystem.
>
> When pack to rofs image, I don't know how to separate the execute file 
> and configuration file in the webui package and pack to different 
> part. Can someone help me to tell me how to solve this problem?
Please take a look at wic: 
https://www.yoctoproject.org/docs/2.4.2/dev-manual/dev-manual.html#creating-partitioned-images-using-wic

You can for example exclude some subdirectory from main rootfs partition 
and place it onto another partition instead.

Take a look at following wic flags:
--rootfs-dir
--exclude-path

You can define subdirs to split in local.conf or another config file 
(e.g. distro config) using the WIC_CREATE_EXTRA_ARGS
and flags as: --rootfs-dir rootfs-main=${IMAGE_ROOTFS}
>
> I am looking forward to your reply.
>
> thanks，
> Byron
>
>
>
-- 
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


--------------CE8A49F151610EEAEC2456AE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 10.08.2019 09:20, www wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:b9d05c.477a.16c7a667413.Coremail.ouyangxuan10@163.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div
        style="line-height:1.7;color:#000000;font-size:14px;font-family:Arial">
        <div>Dear all,</div>
      </div>
    </blockquote>
    Hi,<br>
    <blockquote type="cite"
      cite="mid:b9d05c.477a.16c7a667413.Coremail.ouyangxuan10@163.com">
      <div
        style="line-height:1.7;color:#000000;font-size:14px;font-family:Arial">
        <div><br>
        </div>
        <div>I'm new learner and user of yocto. When I used it, I
          encountered a problem. I don't know how to resolve it, so I
          ask for help.</div>
        <div>the problem is how can I create a new partition on yocto?
          if I have a package named webui, it can be generate several
          execute files and configuration files, the execute files will
          be install into filesystem, such as "/usr/bin", and be packed
          to rofs. but I don't want pack the configuration files  to
          rofs, and I want create a new image and the image will be a
          partition of the global image, and pack the configuration file
          to it, when the system start running, it can be  <span
            style="background-color: rgb(67, 148, 255); color: rgb(255,
            255, 255); font-family: Arial, &quot;PingFang SC&quot;,
            &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft
            YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif;
            font-size: 13px;">separate</span>    mount to the
          filesystem.</div>
        <div><br>
        </div>
        <div>When pack to rofs image, I don't know how to separate the
          execute file and configuration file in the webui package and
          pack to different part. Can someone help me to tell me how to
          solve this problem?</div>
      </div>
    </blockquote>
    Please take a look at wic:
<a class="moz-txt-link-freetext" href="https://www.yoctoproject.org/docs/2.4.2/dev-manual/dev-manual.html#creating-partitioned-images-using-wic">https://www.yoctoproject.org/docs/2.4.2/dev-manual/dev-manual.html#creating-partitioned-images-using-wic</a><br>
    <br>
    You can for example exclude some subdirectory from main rootfs
    partition and place it onto another partition instead.<br>
    <br>
    Take a look at following wic flags:<br>
    --rootfs-dir<br>
    --exclude-path<br>
    <br>
    You can define subdirs to split in local.conf or another config file
    (e.g. distro config) using the <span class="pl-en">WIC_CREATE_EXTRA_ARGS
      <br>
      and </span><span class="pl-en"> </span><span class="pl-s1">flags
      as: --</span><span class="pl-en">rootfs</span><span class="pl-s1">-</span><span
      class="pl-en">dir rootfs</span><span class="pl-s1">-</span><span
      class="pl-en">main=</span><span class="pl-en">${IMAGE_ROOTFS}</span><br>
    <span class="pl-en"></span>
    <blockquote type="cite"
      cite="mid:b9d05c.477a.16c7a667413.Coremail.ouyangxuan10@163.com">
      <div
        style="line-height:1.7;color:#000000;font-size:14px;font-family:Arial"><br>
        <div>I am looking forward to your reply.</div>
        <div><br>
        </div>
        <div>thanks，</div>
        <div>Byron</div>
      </div>
      <br>
      <br>
      <span title="neteasefooter">
        <p> </p>
      </span><br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
<a class="moz-txt-link-freetext" href="https://3mdeb.com">https://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------CE8A49F151610EEAEC2456AE--
