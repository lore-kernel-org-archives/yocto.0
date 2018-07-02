Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1860E00E1B; Mon,  2 Jul 2018 03:52:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6445DE00E18
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 03:52:28 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w62AqOUT005791
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Mon, 2 Jul 2018 11:52:25 +0100
Message-ID: <a56368f0123640367f349c5bf502a3b663a23ed3.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Aaron Chan <aaron.chun.yew.chan@intel.com>, yocto@yoctoproject.org
Date: Mon, 02 Jul 2018 11:52:24 +0100
In-Reply-To: <1530527406-24675-2-git-send-email-aaron.chun.yew.chan@intel.com>
References: <1530527406-24675-1-git-send-email-aaron.chun.yew.chan@intel.com>
	<1530527406-24675-2-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH 2/2] [yocto-ab-helper] utils.py: Resolved unicode data expansion
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
X-List-Received-Date: Mon, 02 Jul 2018 10:52:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2018-07-02 at 18:30 +0800, Aaron Chan wrote:
> A patch to fix the data expansion config.json
> 
> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>  scripts/utils.py | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/scripts/utils.py b/scripts/utils.py
> index 7c6535c..d26cd0c 100644
> --- a/scripts/utils.py
> +++ b/scripts/utils.py
> @@ -142,6 +142,22 @@ def loadconfig():
>              else:
>                  ourconfig[c][x] = config[c][x]
>  
> +    def resolvexp(pattern, config, c):
> +        try:
> +            strMatch = re.compile(pattern)
> +            expansion = strMatch.match(config[c]).group(1)
> +            reference = strMatch.match(config[c]).group(2)
> +            if reference:
> +                ourconfig[c] = config[c].replace(expansion, config[reference])
> +        except:
> +            pass
> +
> +    def handlestr(config, ourconfig, c):
> +        if not c in ourconfig:
> +            ourconfig[c] = config[c]
> +        if isinstance(config[c], str):
> +            resolvexp(r"(\${(.+)})", config, c)
> +        
>      ourconfig = {}
>      for f in files.split():
>          p = f

There is something wrong here as you don't ever call handlestr() which
means resolveexp() is also unused. As far as I can tell, this patch
therefore doesn't do anything.

I'm also puzzled why unicode data is causing a problem. Are you using
python 2 or 3? Can you give me an example of the kind of data which is
failing please?

Cheers,

Richard


