Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E51B5E00839; Mon,  3 Oct 2016 15:54:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BED51E00777
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 15:54:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 03 Oct 2016 15:54:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,292,1473145200"; d="scan'208";a="1049071167"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.255.185.151])
	by fmsmga001.fm.intel.com with ESMTP; 03 Oct 2016 15:54:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Liam R. Howlett" <Liam.Howlett@windriver.com>
Date: Tue, 04 Oct 2016 11:53:58 +1300
Message-ID: <7648188.PrrFUOOUSA@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.5-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1474914338-26310-4-git-send-email-Liam.Howlett@WindRiver.com>
References: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
	<1474914338-26310-4-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 03/10] layerindex/tools/import_layer.py: Avoid failing if there is any layer to add.
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
X-List-Received-Date: Mon, 03 Oct 2016 22:54:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 26 Sep 2016 14:25:31 Liam R. Howlett wrote:
> Subdirectories are scanned when adding layers.  If any of the
> subdirectories or root directory layers already exist in the database,
> then the addition fails.  This changes that behaviour to report the
> failure as a warning and remove it from the list.  That way, if a repo
> has a new layer added it can be rescanned without issue.  Layers being
> rescanned are checked against the vcs_url to ensure there is not a name
> collision.  A name collision without the same vcs_url will still produce
> a hard failure.
> 
> Note that multiple layers with the same vcs_url are supported in the
> error reporting even though this should never happen.
> 
> Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
> ---
>  layerindex/tools/import_layer.py | 21 +++++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/layerindex/tools/import_layer.py
> b/layerindex/tools/import_layer.py index 8d9e8cb..21b31f5 100755
> --- a/layerindex/tools/import_layer.py
> +++ b/layerindex/tools/import_layer.py
> @@ -334,8 +334,21 @@ def main():
>                  else:
>                      subdir = ''
>                  if LayerItem.objects.filter(name=layer.name).exists():
> -                    logger.error('A layer named "%s" already exists in the
> database' % layer_name) 
> -                    sys.exit(1)
> +                    if
> LayerItem.objects.filter(name=layer.name).exclude(vcs_url=layer.vcs_url).ex
> ists(): 
> +                        conflict_list =
> LayerItem.objects.filter(name=layer.name).exclude(vcs_url=layer.vcs_url) 
> +                        cln = ', '
> +                        conflict_list_urls = []
> +                        for conflict in conflict_list:
> +                            conflict_list_urls.append(conflict.vcs_url)
> +                        cln = cln.join(conflict_list_urls)

Not a huge deal, but is there any particular reason you didn't omit the 
initial assignment and do this instead:

cln = ', '.join(conflict_list_urls)

> 
> +            if not layer_paths:
> +                    logger.error('No layers added.')
> +                    sys.exit(1);
> +

Indenting is out here (should always be four spaces for a block indent).

Also typo in the shortlog - "if there is no layer to add" and strictly 
speaking there shouldn't be a period at the end.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

