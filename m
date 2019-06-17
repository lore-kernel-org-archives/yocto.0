Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 018EFE00D84; Sun, 16 Jun 2019 23:07:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 766CAE0049C
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2019 23:07:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5H66Xv9031156
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 16 Jun 2019 23:06:43 -0700
Received: from [128.224.162.186] (128.224.162.186) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Sun, 16 Jun 2019 23:06:22 -0700
To: <yocto@yoctoproject.org>, "Burton, Ross" <ross.burton@intel.com>,
	<pb@pbcl.net>
References: <b36da33b-df9e-2991-5444-cd45a4c3e2d1@windriver.com>
	<1556607386-98960-1-git-send-email-changqing.li@windriver.com>
	<1556607386-98960-2-git-send-email-changqing.li@windriver.com>
	<f35da20a-ae10-1b6e-da56-0b25af2887f6@windriver.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <f09679f5-77b3-4b86-719f-2c61f0070f44@windriver.com>
Date: Mon, 17 Jun 2019 14:06:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <f35da20a-ae10-1b6e-da56-0b25af2887f6@windriver.com>
X-Originating-IP: [128.224.162.186]
Subject: Re: [update-rc.d][PATCH V3] update-rc.d: support enable/disable options
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
X-List-Received-Date: Mon, 17 Jun 2019 06:07:34 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

ping

On 5/28/19 8:59 AM, Changqing Li wrote:
> ping
>
> On 4/30/19 2:56 PM, changqing.li@windriver.com wrote:
>> From: Changqing Li <changqing.li@windriver.com>
>>
>> Add support of enable/disable options, refer
>> https://manpages.debian.org/wheezy/sysv-rc/update-rc.d.8.en.html
>>
>> With support of these options, the usr can never change an existing
>> configuration even after upgrading a package. The program will only
>> install links if none are present, otherwise, it will keep
>> the previous configuration.
>>
>> preinst in update-rc.d.bbclass will delete all the links under
>> rcrunlevel.d, this behavior now conflicts with enable/disable
>> options. so remove preinst from the update-rc.d.bbclass
>>
>> [Yocto 12955]
>>
>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>> ---
>>   update-rc.d | 81 
>> +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 81 insertions(+)
>>
>> diff --git a/update-rc.d b/update-rc.d
>> index e07cf85..a7fb7bc 100644
>> --- a/update-rc.d
>> +++ b/update-rc.d
>> @@ -27,6 +27,7 @@ usage()
>>   usage: update-rc.d [-n] [-f] [-r <root>] <basename> remove
>>          update-rc.d [-n] [-r <root>] [-s] <basename> defaults [NN | 
>> sNN kNN]
>>          update-rc.d [-n] [-r <root>] [-s] <basename> start|stop NN 
>> runlvl [runlvl] [...] .
>> +       update-rc.d [-n] [-r <root>] [-s] <basename> enable|disable 
>> [S|2|3|4|5]
>>           -n: not really
>>           -f: force
>>           -v: verbose
>> @@ -101,6 +102,53 @@ makelinks()
>>       done
>>   }
>>   +# function to disable/enable init script link of one run level
>> +# $1 should be K/S, means to disable/enable
>> +# $2 means which run level to disable/enable
>> +renamelink()
>> +{
>> +    local oldstartstop newstartstop lev oldnn newnn
>> +    if [ "x$1" = "xS" ]; then
>> +        oldstartstop="K"
>> +        newstartstop="S"
>> +    else
>> +        oldstartstop="S"
>> +        newstartstop="K"
>> +    fi
>> +
>> +    lev=$2
>> +    # modifies existing runlevel links for the script 
>> /etc/init.d/name by renaming start links to stop link
>> +        # or stop link to start link with a sequence number equal to 
>> the difference of 100 minus the original sequence number.
>> +    if ls ${etcd}${lev}.d/${oldstartstop}*${bn} >/dev/null 2>&1; then
>> +        oldnn=`basename ${etcd}${lev}.d/${oldstartstop}*${bn}|cut 
>> -c2-3`
>> +        newnn=$[100-$oldnn]
>> +        [ $verbose -eq 1 ] && echo "rename 
>> ${etcd}${lev}.d/${oldstartstop}${oldnn}${bn} -> 
>> ${etcd}${lev}.d/${newstartstop}${newnn}${bn}"
>> +        if [ $notreally -eq 0 ];then
>> +            mv ${etcd}${lev}.d/${oldstartstop}${oldnn}${bn} 
>> ${etcd}${lev}.d/${newstartstop}${newnn}${bn}
>> +        fi
>> +        if [ $dostart -eq 1 ] && [ $newstartstop = "S" ] && [ $lev = 
>> $RUNLEVEL ]; then
>> +            $fn start || true
>> +        fi
>> +    fi
>> +
>> +}
>> +
>> +# function to disable/enable init script link
>> +# $1 should be K/S, means to disable/enable
>> +# $2 run level [S|2|3|4|5], optional, If no start runlevel is
>> +# specified after the disable or enable keywords
>> +# the script will attempt to modify links in all start runlevels
>> +renamelinks()
>> +{
>> +    if [ $# -eq 2 ]; then
>> +        renamelink $1 $2
>> +    else
>> +        for i in 2 3 4 5 S; do
>> +            renamelink $1 $i
>> +        done
>> +    fi
>> +}
>> +
>>   while [ $# -gt 0 ]; do
>>       case $1 in
>>           -n)    notreally=1
>> @@ -221,6 +269,13 @@ case $1 in
>>           ;;
>>         start | stop)
>> +        if [ $# -lt 4 ]
>> +        then
>> +            echo "Not enough arguments"
>> +            usage
>> +            exit 1
>> +        fi
>> +
>>           while [ $# -gt 0 ]; do
>>               if [ $1 = "start" ]; then
>>                   letter=S
>> @@ -251,6 +306,32 @@ case $1 in
>>           makelinks
>>           ;;
>>   +    enable | disable)
>> +        if [ $1 = "enable" ]; then
>> +            letter=S
>> +        elif [ $1 = "disable" ]; then
>> +            letter=K
>> +        else
>> +            usage
>> +            exit 1
>> +        fi
>> +        shift
>> +        #
>> +        if [ $# -gt 0 ]
>> +        then
>> +            case $1 in
>> +                S|2|3|4|5)
>> +                    renamelinks $letter $1
>> +                    ;;
>> +                *)
>> +                    usage
>> +                    exit 1
>> +                    ;;
>> +            esac
>> +        else
>> +            renamelinks $letter
>> +        fi
>> +        ;;
>>       *)
>>           usage
>>           exit 1
>
-- 
BRs

Sandy(Li Changqing)


