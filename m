Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9086E00D64; Wed, 12 Jun 2019 17:06:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A58FFE00D46
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 17:06:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x5D06iT1011542
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 12 Jun 2019 17:06:44 -0700 (PDT)
Received: from [128.224.162.136] (128.224.162.136) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Wed, 12 Jun 2019 17:06:43 -0700
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <1560326000-21130-1-git-send-email-yi.zhao@windriver.com>
	<CANNYZj_7JUwUu0WgtRS2C_bR8thJPDMwWvBg74cCKw763Lq6Vw@mail.gmail.com>
From: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <d27d5cb3-44be-796b-1bf5-f36d9726712c@windriver.com>
Date: Thu, 13 Jun 2019 08:06:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CANNYZj_7JUwUu0WgtRS2C_bR8thJPDMwWvBg74cCKw763Lq6Vw@mail.gmail.com>
X-Originating-IP: [128.224.162.136]
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] glib-2.0: fix configure error for meson build
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
X-List-Received-Date: Thu, 13 Jun 2019 00:06:48 -0000
Content-Type: multipart/alternative;
	boundary="------------B514F99782A0A7494EFEDC2B"
Content-Language: en-US

--------------B514F99782A0A7494EFEDC2B
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 6/12/19 6:03 PM, Alexander Kanavin wrote:
> On Wed, 12 Jun 2019 at 09:54, Yi Zhao <yi.zhao@windriver.com 
> <mailto:yi.zhao@windriver.com>> wrote:
>
>     +PACKAGECONFIG[selinux] =
>     "-Dselinux=enabled,-Dselinux=disabled,libselinux,"
>
>
> This line should probably go into the oe-core recipe? It is fine to 
> have options that depend on things absent in oe-core, as long as those 
> options are disabled by default.


Thanks. I will test it and send a patch to oe-core


//Yi

>
> Alex

--------------B514F99782A0A7494EFEDC2B
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/12/19 6:03 PM, Alexander Kanavin
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANNYZj_7JUwUu0WgtRS2C_bR8thJPDMwWvBg74cCKw763Lq6Vw@mail.gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">On Wed, 12 Jun 2019 at 09:54, Yi Zhao &lt;<a
            href="mailto:yi.zhao@windriver.com" moz-do-not-send="true">yi.zhao@windriver.com</a>&gt;
          wrote:<br>
        </div>
        <div class="gmail_quote">
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">+PACKAGECONFIG[selinux] =
            "-Dselinux=enabled,-Dselinux=disabled,libselinux,"<br>
          </blockquote>
          <div><br>
          </div>
          <div>This line should probably go into the oe-core recipe? It
            is fine to have options that depend on things absent in
            oe-core, as long as those options are disabled by default.<br>
          </div>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>Thanks. I will test it and send a patch to oe-core</p>
    <p><br>
    </p>
    <p>//Yi<br>
    </p>
    <blockquote type="cite"
cite="mid:CANNYZj_7JUwUu0WgtRS2C_bR8thJPDMwWvBg74cCKw763Lq6Vw@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_quote">
          <div><br>
          </div>
          <div>Alex<br>
          </div>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------B514F99782A0A7494EFEDC2B--
