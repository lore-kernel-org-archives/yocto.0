Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABCDDE0071C; Fri, 13 Jan 2017 12:33:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 806D8E0034A
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 12:33:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v0DKXl5c008830
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 13 Jan 2017 12:33:47 -0800 (PST)
Received: from server.local (128.224.21.59) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 13 Jan 2017 12:33:46 -0800
To: George McCollister <george.mccollister@gmail.com>, <yocto@yoctoproject.org>
References: <20170113202720.16883-1-george.mccollister@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <f1f856ca-ebe0-9a90-2eee-a1bac7078e64@windriver.com>
Date: Fri, 13 Jan 2017 15:33:46 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170113202720.16883-1-george.mccollister@gmail.com>
Subject: Re: [kernel-tools][PATCH] scc: Fix process_file error check
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
X-List-Received-Date: Fri, 13 Jan 2017 20:33:52 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-13 3:27 PM, George McCollister wrote:
> Commit 626ceac135fa66277c2fa53197be33cc9d4d7614 broke the error check in
> process_file by adding in three lines that stomp on $? which print the
> output file when verbose is set.
>
> Move output file on verbose print to an elif after the error check.

Good catch!

Merged.

My oe-core submissions are queued up at the moment, but I'll have this
in my next batch.

Bruce

>
> Signed-off-by: George McCollister <george.mccollister@gmail.com>
> ---
>  tools/scc | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/tools/scc b/tools/scc
> index 4cd68a4..3d17496 100755
> --- a/tools/scc
> +++ b/tools/scc
> @@ -246,10 +246,6 @@ process_file()
>          )
>      )
>
> -    if [ -n "${verbose}" ]; then
> -        cat ${scc_output_file}
> -    fi
> -
>      if [ $? -ne 0 ]; then
>          echo "[ERROR]: processing of file $in failed"
>          cat ${scc_output_file}
> @@ -275,6 +271,8 @@ process_file()
>          fi
>  	rm -f ${scc_output_file}
>          exit 1
> +    elif [ -n "${verbose}" ]; then
> +        cat ${scc_output_file}
>      fi
>
>      rm -f ${scc_output_file}
>


