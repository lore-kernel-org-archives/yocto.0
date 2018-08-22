Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41F3BE006C7; Wed, 22 Aug 2018 02:03:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6EA6E003D7
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 02:03:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7M93VsT024744
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 22 Aug 2018 02:03:31 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Wed, 22 Aug 2018 02:03:30 -0700
To: benxi <lbxhust@163.com>
References: <32f124db.694c.1655fe0c5fe.Coremail.lbxhust@163.com>
	<7ae3b24c-ff75-124b-4792-045eba18353f@windriver.com>
	<107cb43d.a85a.16560bbeef2.Coremail.lbxhust@163.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <7e21584d-4c34-c91e-6eed-d85728e5adf5@windriver.com>
Date: Wed, 22 Aug 2018 17:08:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <107cb43d.a85a.16560bbeef2.Coremail.lbxhust@163.com>
X-Originating-IP: [128.224.162.218]
Cc: yocto@yoctoproject.org
Subject: Re: Id "s0" respawning too fast on Raspberry pi3
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
X-List-Received-Date: Wed, 22 Aug 2018 09:03:39 -0000
Content-Type: multipart/alternative;
	boundary="------------AA58CE5B2B85FB2C3E061594"

--------------AA58CE5B2B85FB2C3E061594
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 08/22/2018 04:24 PM, benxi wrote:
> Hi Qi,
> Thanks for your reply. It indeed solves the problem, however I'm 
> afraid that modifying SERIAL_CONSOLES can have side effects on other 
> recipes. I also wonder if there 're any way to enable ttyS0 on my 
> raspberry pi(Since ENABLE_UART doesn't work).
>

The SERIAL_CONSOLES setting is _expected_ affect all recipes. That's why 
it's usually set in some .conf file.
Serial consoles will have different names and are device related. That's 
why we have the variable SERIAL_CONSOLES.

I think you should just change SERIAL_CONSOLES to match the raspberry pi.

Best Regards,
Chen Qi

> 在 2018-08-22 15:59:44，"ChenQi" <Qi.Chen@windriver.com> 写道：
>
>     On 08/22/2018 12:24 PM, benxi wrote:
>>     Hello Everyone,
>>         I build a rpi-hwup-image and run it on my raspberry pi3(Model
>>     B V1.2). After the system boots up, I keep seeing such message:
>>         INIT: Id "S0" respawning too fast: disabled for 5 minutes.
>>         I notice that yocto adds the following line to /etc/inittab
>>     when install sysvinit, since Serial_Console was set in
>>     raspberrypi3-64.conf:
>>     S0:12345:respawn:/bin/start_getty 115200 ttyS0 vt102
>>        I try to add ENABLE_UART = "1" in local.conf but the message
>>     keeps coming. The message can be eliminated by commenting out the
>>     corresponding line in /etc/inittab.
>>        So, is this a bug of meta-raspberrypi? Is there anyway to fix
>>     it without modifying sysvinit's recipes and /etc/inittab?
>>
>>
>
>     Could you please check the SERIAL_CONSOLES variable to see if
>     modifying its value could solve the problem?
>
>     Best Regards,
>     Chen Qi
>
>>
>>
>
>
>


--------------AA58CE5B2B85FB2C3E061594
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/22/2018 04:24 PM, benxi wrote:<br>
    </div>
    <blockquote
      cite="mid:107cb43d.a85a.16560bbeef2.Coremail.lbxhust@163.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      Hi Qi,<br>
      Thanks for your reply. It indeed solves the problem, however I'm
      afraid that modifying SERIAL_CONSOLES can have side effects on
      other recipes. I also wonder if there 're any way to enable ttyS0
      on my raspberry pi(Since ENABLE_UART doesn't work).<br>
      <br>
    </blockquote>
    <br>
    The SERIAL_CONSOLES setting is _expected_ affect all recipes. That's
    why it's usually set in some .conf file.<br>
    Serial consoles will have different names and are device related.
    That's why we have the variable SERIAL_CONSOLES.<br>
    <br>
    I think you should just change SERIAL_CONSOLES to match the
    raspberry pi.<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote
      cite="mid:107cb43d.a85a.16560bbeef2.Coremail.lbxhust@163.com"
      type="cite">在 2018-08-22 15:59:44，"ChenQi"
      <a class="moz-txt-link-rfc2396E" href="mailto:Qi.Chen@windriver.com">&lt;Qi.Chen@windriver.com&gt;</a> 写道：<br>
      <blockquote id="isReplyContent" style="PADDING-LEFT: 1ex; MARGIN:
        0px 0px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid">
        <div class="moz-cite-prefix">On 08/22/2018 12:24 PM, benxi
          wrote:<br>
        </div>
        <blockquote
          cite="mid:32f124db.694c.1655fe0c5fe.Coremail.lbxhust@163.com"
          type="cite">
          <div
            style="line-height:1.7;color:#000000;font-size:14px;font-family:Arial">
            <div
              style="line-height:1.7;color:#000000;font-size:14px;font-family:Arial">
              <div>Hello Everyone,</div>
              <div>    I build a rpi-hwup-image and run it on my
                raspberry pi3(Model B V1.2). After the system boots up,
                I keep seeing such message: </div>
              <div style="box-sizing: border-box; margin-top: 0px;
                margin-bottom: 16px; color: rgb(36, 41, 46);
                font-family: -apple-system, system-ui, &quot;Segoe
                UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple
                Color Emoji&quot;, &quot;Segoe UI Emoji&quot;,
                &quot;Segoe UI Symbol&quot;;">    INIT: Id "S0"
                respawning too fast: disabled for 5 minutes.</div>
              <div style="box-sizing: border-box; margin-top: 0px;
                margin-bottom: 16px; color: rgb(36, 41, 46);
                font-family: -apple-system, system-ui, &quot;Segoe
                UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple
                Color Emoji&quot;, &quot;Segoe UI Emoji&quot;,
                &quot;Segoe UI Symbol&quot;;">    I notice that yocto
                adds the following line to /etc/inittab when install
                sysvinit, since Serial_Console was set in
                raspberrypi3-64.conf:</div>
              <div style="box-sizing: border-box; margin-top: 0px;
                margin-bottom: 16px; color: rgb(36, 41, 46);
                font-family: -apple-system, system-ui, &quot;Segoe
                UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple
                Color Emoji&quot;, &quot;Segoe UI Emoji&quot;,
                &quot;Segoe UI Symbol&quot;;">   
                S0:12345:respawn:/bin/start_getty 115200 ttyS0 vt102</div>
              <div style="box-sizing: border-box; margin-top: 0px;
                margin-bottom: 16px; color: rgb(36, 41, 46);
                font-family: -apple-system, system-ui, &quot;Segoe
                UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple
                Color Emoji&quot;, &quot;Segoe UI Emoji&quot;,
                &quot;Segoe UI Symbol&quot;;">   I try to add
                ENABLE_UART = "1" in local.conf but the message keeps
                coming. The message can be eliminated by commenting out
                the corresponding line in /etc/inittab.</div>
              <div style="box-sizing: border-box; margin-top: 0px;
                margin-bottom: 16px; color: rgb(36, 41, 46);
                font-family: -apple-system, system-ui, &quot;Segoe
                UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple
                Color Emoji&quot;, &quot;Segoe UI Emoji&quot;,
                &quot;Segoe UI Symbol&quot;;">   So, is this a bug of
                meta-raspberrypi? Is there anyway to fix it without
                modifying sysvinit's recipes and /etc/inittab?</div>
            </div>
          </div>
          <br>
          <br>
        </blockquote>
        <br>
        Could you please check the SERIAL_CONSOLES variable to see if
        modifying its value could solve the problem?<br>
        <br>
        Best Regards,<br>
        Chen Qi<br>
        <br>
        <blockquote
          cite="mid:32f124db.694c.1655fe0c5fe.Coremail.lbxhust@163.com"
          type="cite"><span title="neteasefooter">
            <p> </p>
          </span><br>
          <fieldset class="mimeAttachmentHeader"></fieldset>
          <br>
        </blockquote>
        <p><br>
        </p>
      </blockquote>
      <br>
      <br>
      <span title="neteasefooter">
        <p> </p>
      </span>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------AA58CE5B2B85FB2C3E061594--
