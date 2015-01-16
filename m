Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14971E00753; Fri, 16 Jan 2015 04:31:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39ED8E004D6
	for <yocto@yoctoproject.org>; Fri, 16 Jan 2015 04:31:25 -0800 (PST)
Received: by mail-vc0-f173.google.com with SMTP id kv19so6530990vcb.4
	for <yocto@yoctoproject.org>; Fri, 16 Jan 2015 04:31:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=YvSGg3WPkHlUS90UtWpLUdu3B/5Ll6sRYBCsvF5/nC8=;
	b=TwAg/i2a5pX6Grmlt+4ctfuGHBleYpYbzL9tQ2mPxh7t51zid6Be5GOnReZ9pK2lRt
	lowDjl2CTMnu5dtpxqfv4sGNfeQBEmzCaT1HD4VvrGHLT/fKt7luzWuc+1a5UEYP1meY
	xi/sfqFC5UJvNnttbuHAx+PBGrfOid/vFwthtiLtl2lb3MQg9hQXKkRUd5KlvdcrMki3
	Vpqnq9LTDr4tHxYEEFeVF6Vmng3pkVsvWsLr2iiKBDFyDxaxtInZXGAgSgzNbqGHE4QX
	1ZAJx5rlTFF9Rn9SxPybDwoYO0ro5n8oW8Vz8w9FLAF7RxZeDxyl+0+ycCk6vSRugIDJ
	fMkg==
X-Gm-Message-State: ALoCoQlML1onH3zwhHDxSkZajodVUMef0bhNsHuJesZ4WCPTgZAtJXKxLiP9/dTDAYCXRGUhbk9+
MIME-Version: 1.0
X-Received: by 10.221.24.72 with SMTP id rd8mr7327597vcb.56.1421411485379;
	Fri, 16 Jan 2015 04:31:25 -0800 (PST)
Received: by 10.52.29.146 with HTTP; Fri, 16 Jan 2015 04:31:25 -0800 (PST)
In-Reply-To: <1421409793-25295-1-git-send-email-ross.burton@intel.com>
References: <1421409793-25295-1-git-send-email-ross.burton@intel.com>
Date: Fri, 16 Jan 2015 12:31:25 +0000
Message-ID: <CAPhnLPCU9nPzmo3=UdsA7+z_ydNQ6MxetXF276WU9kZVaSQt_g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Ross Burton <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] buildbot/templates: add links to Error Reporting site
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
X-List-Received-Date: Fri, 16 Jan 2015 12:31:28 -0000
Content-Type: text/plain; charset=UTF-8

Pulled into master, thanks!

On 16 January 2015 at 12:03, Ross Burton <ross.burton@intel.com> wrote:
> In build result grids, add a link to search the Error Report site for the build
> SHA.
>
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  .../buildbot/status/web/templates/grid_macros.html                    |    1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html
> index 91ddce4..0479927 100644
> --- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html
> +++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html
> @@ -26,6 +26,7 @@
>        {%- else %}<br/><b>Commit: </b>latest{% endif %}
>        {%- if ss.branch %} in {{ ss.branch|e }}{% endif %}
>        {%- if ss.hasPatch %} [patch]{% endif -%}
> +      (<a href="http://errors.yoctoproject.org/Errors/Search/Args/?items=10&query={{ss.revision}}">errors</a>)
>      <br/>
>      {%- endfor %}
>    </td>
> --
> 1.7.10.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

