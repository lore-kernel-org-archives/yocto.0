Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09C11E0054C; Tue,  2 Sep 2014 13:45:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBA42E004F5
	for <yocto@yoctoproject.org>; Tue,  2 Sep 2014 13:45:16 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id ij19so7689708vcb.40
	for <yocto@yoctoproject.org>; Tue, 02 Sep 2014 13:45:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=laLxZTXJthHL7HCfq778hHeOWoL1KXDnlVywprSLTN0=;
	b=XyXjQudij8TGmgv/GJrAOBsm3JlquFRMb+UmEcCfwZh51SvYu7Jjhw65WI82U3fBhR
	SJEGISsaaNYoDecbsCvSOIxsrvkqcTedJQzHcskytUblzgq8fDP55rD935CzZrIePNzs
	Vjr2y2MSFPuK7fDLcZhuZ+YtAyq6SZLHC9MyKUh7VRcxpNvYqTzIJGni1hdaBAWIU6nT
	dTLVPF/U8yArxp+ZLsC8T04eQJg5p/ub0TeKBHtP/asE8J3a/UNSjskes7+IS+SoAzxt
	BRxErFfcnETfD1fouJ508p1X4ZZqkaf7MdKm6qI4tigEk29WaX3EGqImI+yjita7LZIG
	KQDQ==
X-Gm-Message-State: ALoCoQmoT8WAY4bo+JtuH7PdiiCC821o2PYRPUXxLqjYXjRsG1C5F+AC+CBO2f9e4Z3HZiZHDPCN
MIME-Version: 1.0
X-Received: by 10.52.26.206 with SMTP id n14mr26372284vdg.0.1409690715474;
	Tue, 02 Sep 2014 13:45:15 -0700 (PDT)
Received: by 10.52.244.44 with HTTP; Tue, 2 Sep 2014 13:45:15 -0700 (PDT)
In-Reply-To: <CAMP9K89HYuQyK65kPGyBWtm-3DNZMTONhMYVvz6sxtRGnmpSWA@mail.gmail.com>
References: <CAMP9K89HYuQyK65kPGyBWtm-3DNZMTONhMYVvz6sxtRGnmpSWA@mail.gmail.com>
Date: Tue, 2 Sep 2014 13:45:15 -0700
Message-ID: <CAPhnLPAb+8ByFWPxNJ9JDvXKavguZp54m8yPK8ouVDPhdvHO9A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: California Sullivan <californialsullivan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Autobuilder.py: Fix triggered build bug
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
X-List-Received-Date: Tue, 02 Sep 2014 20:45:27 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 28, 2014 at 4:33 PM, California Sullivan
<californialsullivan@gmail.com> wrote:
> When a build was configured to use the TriggerBuilds build step, it would
> take on the buildslave of the last triggered build rather than its own.
>
> Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
> ---
>  lib/python2.7/site-packages/autobuilder/Autobuilder.py | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> index a582a03..2e2e899 100644
> --- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> +++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> @@ -58,7 +58,7 @@ class Autobuilder:
>              self.set_props = {}
>              self.repos = []
>              self.properties = []
> -            self.builders = None
> +            self.builders = self.parseBuilders(buildset)
>              self.schedprops.append(NestedParameter(name='ss_' + buildset,
> label="<h3><div class='trigger_heading' id='"+buildset+"'>" + buildset + "
> defaults:</div></h3>", fields=[FixedParameter(name="dummy",
> default="dummy")]))
>              self.parseBuildSet(buildset)
>              locals()['buildset_%s' %
> buildset]=BuildSet.BuildSet(name=buildset,
> @@ -86,7 +86,6 @@ class Autobuilder:
>
>      def parseBuildSet(self, buildset):
>          if buildset is not "BuildSets":
> -            self.builders=self.parseBuilders(buildset)
>              self.parseProps(buildset)
>              self.parseRepos(buildset)
>              self.parseSteps(buildset)
> --
> 1.9.1
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


This looks ok, but I'd like to test it a bit before I shove it into
production. What have you tested this with (example: I tested it on a
single build triggering another one, or a build that triggers
itself...) With Trigger being a bit of core functionality, it would
help a bit to know this.

-b


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

