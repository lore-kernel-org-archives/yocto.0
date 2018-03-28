Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3CF5E00C76; Wed, 28 Mar 2018 00:00:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A566AE00851
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 00:00:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w2S70fOS024696
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 00:00:41 -0700 (PDT)
Received: from [128.224.163.178] (128.224.163.178) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 28 Mar 2018 00:00:41 -0700
To: <yocto@yoctoproject.org>
References: <20180328065517.13807-1-kai.kang@windriver.com>
From: Kang Kai <Kai.Kang@windriver.com>
Message-ID: <42f394cf-ccdb-3dcd-9edc-5904764eb212@windriver.com>
Date: Wed, 28 Mar 2018 14:59:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20180328065517.13807-1-kai.kang@windriver.com>
Subject: Re: [meta-selinux][PATCH 0/2] Fix systemd configure error when enable audit
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
X-List-Received-Date: Wed, 28 Mar 2018 07:00:43 -0000
Content-Type: multipart/alternative;
	boundary="------------E2CD872F66144BDA59FE3FC9"
Content-Language: en-US

--------------E2CD872F66144BDA59FE3FC9
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2018年03月28日 14:55, Kai Kang wrote:
> Test with configure in local.conf
> DISTRO_FEATURES_append = " selinux systemd"
>
> Kai Kang (2):
>    enable-audit.bbclass: remove implement of packageconfig audit
>    audit: fix pkgconfigdir
>
>   classes/enable-audit.bbclass          | 1 -
>   recipes-security/audit/audit_2.7.6.bb | 3 ++-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
Forgot layer info meta-selinux in the title.

-- 
Regards,
Neil | Kai Kang


--------------E2CD872F66144BDA59FE3FC9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 2018年03月28日 14:55, Kai Kang wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20180328065517.13807-1-kai.kang@windriver.com">
      <pre wrap="">Test with configure in local.conf
DISTRO_FEATURES_append = " selinux systemd"

Kai Kang (2):
  enable-audit.bbclass: remove implement of packageconfig audit
  audit: fix pkgconfigdir

 classes/enable-audit.bbclass          | 1 -
 recipes-security/audit/audit_2.7.6.bb | 3 ++-
 2 files changed, 2 insertions(+), 2 deletions(-)

</pre>
    </blockquote>
    <p><font size="+1">Forgot layer info meta-selinux in the title.</font><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
Regards,
Neil | Kai Kang</pre>
  </body>
</html>

--------------E2CD872F66144BDA59FE3FC9--
