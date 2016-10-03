Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFFF9E00839; Mon,  3 Oct 2016 15:47:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08B72E00912
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 15:47:25 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 03 Oct 2016 15:47:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,292,1473145200"; d="scan'208";a="886354021"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.255.185.151])
	by orsmga003.jf.intel.com with ESMTP; 03 Oct 2016 15:47:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Liam R. Howlett" <Liam.Howlett@windriver.com>
Date: Tue, 04 Oct 2016 11:47:20 +1300
Message-ID: <18920041.L1kWU4qNZt@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.5-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1474914338-26310-3-git-send-email-Liam.Howlett@WindRiver.com>
References: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
	<1474914338-26310-3-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 02/10] layerindex/tools/import_layer.py: Sanitize layer name.
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
X-List-Received-Date: Mon, 03 Oct 2016 22:47:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 26 Sep 2016 14:25:30 Liam R. Howlett wrote:
> Django will produce a cryptic error message if layers are added with
> invalid names.  Sanitize the layer names when trying to add them.
> 
> Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
> ---
>  layerindex/tools/import_layer.py | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/layerindex/tools/import_layer.py
> b/layerindex/tools/import_layer.py index 9b5da22..8d9e8cb 100755
> --- a/layerindex/tools/import_layer.py
> +++ b/layerindex/tools/import_layer.py
> @@ -181,6 +181,8 @@ def get_github_layerinfo(layer_url, username = None,
> password = None):
> 
> 
>  def main():
> +    valid_layer_name = re.compile('[-\w]+$')
> +
>      parser = optparse.OptionParser(
>          usage = """
>      %prog [options] <url> [name]""")
> @@ -222,6 +224,10 @@ def main():
>              if layer_name.endswith('.git'):
>                  layer_name = layer_name[:-4]
> 
> +    if not valid_layer_name.match(layer_name):
> +            logger.error('Invlaid layer name "%s" -  Layer name can only
> include letters, numbers and dashes.', layer_name) 
> +            sys.exit(1)

Typo "Invlaid", and the indenting is out here too.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

