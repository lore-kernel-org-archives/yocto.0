Return-Path: <ml@communistcode.co.uk>
Received: from owm.eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41642E006F4
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 02:27:20 -0800 (PST)
Message-ID: <52932604.3080803@communistcode.co.uk>
Date: Mon, 25 Nov 2013 10:27:16 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CACXtFMicMSJZ=H1+UMgOrcKZnoKK=9VmUbPbEbnWF8Mk1hQv7A@mail.gmail.com>	<CALEed8bT5pH_StnPcYnbHDRPJ-74rtzE9_A2yt6W3AtTdcazTw@mail.gmail.com>	<CACXtFMi8yXSbZcPh392PW9Q-ZfRELHdvKHQ8CgdboSizBSGEhg@mail.gmail.com>
	<CACXtFMhm=iG7cxXbcSBTKv=cVKd8RuzkKJeA7+OBnLWX4tpAHw@mail.gmail.com>
In-Reply-To: <CACXtFMhm=iG7cxXbcSBTKv=cVKd8RuzkKJeA7+OBnLWX4tpAHw@mail.gmail.com>
Subject: Re: Changing /etc/shadow file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 25 Nov 2013 10:27:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 25/11/13 10:23, rajan pathak wrote:
> Running out of idea
> 
> Any would like to give some suggestion here?
> 
> Thanks
> 
> 

I use this snippet to modify my passwd file so I'm sure you could adapt
it for the shadow file.

ROOTFS_POSTPROCESS_COMMAND_append = " \
  sed -i 's/*/x/' \
  ${IMAGE_ROOTFS}/etc/passwd ;"


-- 
  Jack Mitchell (jack@embed.me.uk)
  Embedded Systems Engineer
  Cambridgeshire, UK
  http://www.embed.me.uk
-- 

