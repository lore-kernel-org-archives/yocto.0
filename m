Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6CE5E01107; Fri,  6 Jul 2018 06:29:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,RCVD_IN_RP_RNBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [87.81.244.161 listed in bl.score.senderscore.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48A36E0089D
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 06:29:50 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w66DTgUW008693
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 6 Jul 2018 14:29:44 +0100
Message-ID: <99fb7a6226377d5e10c68a03fcc08010ad14cdd9.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Aaron Chan <aaron.chun.yew.chan@intel.com>, yocto@yoctoproject.org
Date: Fri, 06 Jul 2018 14:29:42 +0100
In-Reply-To: <1530868505-31937-1-git-send-email-aaron.chun.yew.chan@intel.com>
References: <1530868505-31937-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] [yocto-ab-helper] scripts/run-jinja-parser: Add Jinja2 parser extension in autobuilder
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
X-List-Received-Date: Fri, 06 Jul 2018 13:29:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-07-06 at 17:15 +0800, Aaron Chan wrote:
> This patch is introduced as a feature in 2.6 M2 to support the
> extension of autobuilder to LAVA (Linaro Automated Validation
> Architecture).
> run-jinja2-parser loads lava config module and generates LAVA job
> config in a YAML format before its triggers LAVA server to execute a
> task.

I don't have much lava knowledge but at a quick glance this may be ok,
apart from one of the file names which I've commented on below.

> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>  lava/device/bsp-packages.jinja2 | 43 ++++++++++++++++++
>  scripts/lava.py                 | 76
> ++++++++++++++++++++++++++++++++
>  scripts/run-jinja-parser        | 97
> +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 216 insertions(+)
>  create mode 100644 lava/device/bsp-packages.jinja2
>  create mode 100644 scripts/lava.py
>  create mode 100755 scripts/run-jinja-parser
> 
> diff --git a/lava/device/bsp-packages.jinja2 b/lava/device/bsp-packages.jinja2
> new file mode 100644
> index 0000000..61fbcad
> --- /dev/null
> +++ b/lava/device/bsp-packages.jinja2
> @@ -0,0 +1,43 @@
> +device_type: {{ device_type }}
> +job_name: {{ job_name }}
> +timeouts: 
> +  job:
> +    minutes: {{ timeout.job.minutes }}
> +  action:
> +    minutes: {{ timeout.action.minutes }}
> +  connection:
> +    minutes: {{ timeout.connection.minutes }}
> +priority: {{ priority }}
> +visibility: {{ visibility }}
> +actions:
> +- deploy:
> +    timeout:
> +      minutes: {{ deploy.timeout }}
> +    to: {{ deploy.to }}
> +    kernel:
> +      url: {{ deploy.kernel.url }}
> +      type: {{ deploy.kernel.type }}
> +    modules:
> +      url: {{ deploy.modules.url }}
> +      compression: {{ deploy.modules.compression }}
> +    nfsrootfs:
> +      url: {{ deploy.nfsrootfs.url }}
> +      compression: {{ deploy.nfsrootfs.compression }}
> +    os: {{ deploy.os }}
> +- boot:
> +    timeout:
> +      minutes: {{ boot.timeout }}
> +    method: {{ boot.method }}
> +    commands: {{ boot.commands }}
> +    auto_login: { login_prompt: {{ boot.auto_login.login_prompt }},
> username: {{ boot.auto_login.username }} }
> +    prompts:
> +      - {{ boot.prompts }}
> +- test:
> +    timeout:
> +      minutes: {{ test.timeout }}
> +    name: {{ test.name }}
> +    definitions:
> +    - repository: {{ test.definitions.repository }}
> +      from: {{ test.definitions.from }}
> +      path: {{ test.definitions.path }}
> +      name: {{ test.definitions.name }}
> diff --git a/scripts/lava.py b/scripts/lava.py
> new file mode 100644
> index 0000000..be18529
> --- /dev/null
> +++ b/scripts/lava.py

I'm not sure we want to call this "lava.py". Would something like
"lava-conf-intelqa-minnowboard.py" be a better description (as that is
what it appears to be)?

Should configuration files be places somewhere outside scripts?

Cheers,

Richard

