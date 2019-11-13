Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7AA8E00E12; Wed, 13 Nov 2019 02:40:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD4A6E00D46
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 02:40:24 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Nov 2019 02:40:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="229708469"
Received: from vantienn-mobl.ccr.corp.intel.com (HELO shodan.localnet)
	([10.255.162.147])
	by fmsmga004.fm.intel.com with ESMTP; 13 Nov 2019 02:40:21 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: changqing.li@windriver.com
Date: Wed, 13 Nov 2019 23:36:11 +1300
Message-ID: <9315981.NtHHCumI8A@shodan>
Organization: Intel Corporation
In-Reply-To: <1573547573-352969-1-git-send-email-changqing.li@windriver.com>
References: <1573547573-352969-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [error-report-web][PATCH V2] Add local.conf and auto.conf into error details
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
X-List-Received-Date: Wed, 13 Nov 2019 10:40:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Changqing,

Some comments below.

On Tuesday, 12 November 2019 9:32:53 PM NZDT changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
> 
> Support to display local.conf and auto.conf on error report web.
> Here is commit in oe-core, which add local.conf/auto.conf into error report
> https://git.openembedded.org/openembedded-core/commit/?id=7adf9707c04d8ef6bcd8d8bda555687f705e6ee6
> 
> This commit is related to YOCTO #13252
> 
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>  Post/0006_auto_20190917_0419.py | 24 ++++++++++++++++++++++++
>  Post/models.py                  |  2 ++
>  Post/parser.py                  |  2 ++
>  Post/test.py                    |  2 ++
>  templates/error-details.html    | 10 ++++++++++
>  test-data/test-payload.json     |  4 +++-
>  6 files changed, 43 insertions(+), 1 deletion(-)
>  create mode 100644 Post/0006_auto_20190917_0419.py
> 
> diff --git a/Post/0006_auto_20190917_0419.py b/Post/0006_auto_20190917_0419.py
> new file mode 100644
> index 0000000..827944e
> --- /dev/null
> +++ b/Post/0006_auto_20190917_0419.py

Could you please give the migration a proper name (-n option to makemigrations) e.g. local_conf_auto_conf

> --- a/Post/models.py
> +++ b/Post/models.py
> @@ -43,6 +43,8 @@ class Build(models.Model):
>      LINK_BACK = models.TextField(max_length=300, blank=True, null=True)
>      ERROR_TYPE = models.CharField(max_length=20, choices=ERROR_TYPE_CHOICES,
>                                    default=ErrorType.RECIPE)
> +    LOCAL_CONF = models.TextField(max_length=int(settings.MAX_UPLOAD_SIZE), default="")
> +    AUTO_CONF = models.TextField(max_length=int(settings.MAX_UPLOAD_SIZE), default="")

I'm not sure this is practical, for two reasons:

1) Field sizes should not be variable like this; changing the MAX_UPLOAD_SIZE value after the fact would not change the database structure
2) The value could never actually reach MAX_UPLOAD_SIZE because the overhead of the surrounding JSON would block it from being uploaded if it did

However, since this is a TextField we don't actually have to specify a max_length (for a TextField max_length only actually affects the frontend, and we don't expose this field in a form) so it can just be removed.

Another thing, instead of default="" you should use blank=True.


> +        {% if detail.BUILD.LOCAL_CONF != "" %}
> +        <dt></a>Local Conf:</dt>
> +        <dd style="white-space: pre-wrap;">{{ detail.BUILD.LOCAL_CONF | safe }}</dd>
> +        {% endif %}
> +
> +        {% if detail.BUILD.AUTO_CONF != "" %}
> +        <dt></a>Auto Conf:</dt>
> +        <dd style="white-space: pre-wrap;">{{ detail.BUILD.AUTO_CONF | safe }}</dd>
> +        {% endif %}

We cannot use the safe filter here - doing so could open up an XSS vulnerability, since anyone can upload anything to the error-report application and the content could include links or other malicious HTML data. We should allow it to be auto-escaped. Is there a particular issue you were using this to solve?

Cheers
Paul

-- 

Paul Eggleton
Intel System Software Products



