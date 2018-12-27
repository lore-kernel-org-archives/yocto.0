Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B515E00CC4; Wed, 26 Dec 2018 19:02:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2766E00C90
	for <yocto@yoctoproject.org>; Wed, 26 Dec 2018 19:02:03 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wBR31hM1029653
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 26 Dec 2018 19:01:53 -0800
Received: from [128.224.162.228] (128.224.162.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Wed, 26 Dec 2018 19:01:32 -0800
To: <yocto@yoctoproject.org>
References: <1541756697-370127-1-git-send-email-changqing.li@windriver.com>
	<08fb32b8-b9bd-7c85-4b72-b799ac88f538@windriver.com>
	<df4fecad-141a-3433-75fe-ce0e45bbc886@windriver.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <f38d0581-ac86-ef6d-b3f3-8c1735fbcb4d@windriver.com>
Date: Thu, 27 Dec 2018 11:01:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <df4fecad-141a-3433-75fe-ce0e45bbc886@windriver.com>
X-Originating-IP: [128.224.162.228]
Subject: Re: [PATCH] update-rc.d: support enable/disable function
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
X-List-Received-Date: Thu, 27 Dec 2018 03:02:07 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Ping

On 12/5/18 4:13 PM, Changqing Li wrote:
> ping
>
> On 11/26/18 11:35 AM, Changqing Li wrote:
>> Ping
>>
>> On 11/9/18 5:44 PM, changqing.li@windriver.com wrote:
>>> From: Changqing Li <changqing.li@windriver.com>
>>>
>>> Add support of enable/disable function, so that user can keep
>>> previous config after upgrade package
>>>
>>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>>> ---
>>>   update-rc.d | 70 
>>> +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>>>   1 file changed, 70 insertions(+)
>>>
>>> diff --git a/update-rc.d b/update-rc.d
>>> index e07cf85..1ba97d3 100644
>>> --- a/update-rc.d
>>> +++ b/update-rc.d
>>> @@ -27,6 +27,7 @@ usage()
>>>   usage: update-rc.d [-n] [-f] [-r <root>] <basename> remove
>>>          update-rc.d [-n] [-r <root>] [-s] <basename> defaults [NN | 
>>> sNN kNN]
>>>          update-rc.d [-n] [-r <root>] [-s] <basename> start|stop NN 
>>> runlvl [runlvl] [...] .
>>> +       update-rc.d [-n] [-r <root>] [-s] <basename> enable|disable 
>>> [S|2|3|4|5]
>>>           -n: not really
>>>           -f: force
>>>           -v: verbose
>>> @@ -101,6 +102,43 @@ makelinks()
>>>       done
>>>   }
>>>   +renamelink()
>>> +{
>>> +    local oldstartstop newstartstop lev oldnn newnn
>>> +    if [ "x$1" = "xS" ]; then
>>> +        oldstartstop="K"
>>> +        newstartstop="S"
>>> +    else
>>> +        oldstartstop="S"
>>> +        newstartstop="K"
>>> +    fi
>>> +
>>> +    lev=$2
>>> +    if ls ${etcd}${lev}.d/${oldstartstop}*${bn} >/dev/null 2>&1; then
>>> +        oldnn=`basename ${etcd}${lev}.d/${oldstartstop}*${bn}|cut 
>>> -c2-3`
>>> +        newnn=$[100-$oldnn]
>>> +        [ $verbose -eq 1 ] && echo "rename 
>>> ${etcd}${lev}.d/${oldstartstop}${oldnn}${bn} -> 
>>> ${etcd}${lev}.d/${newstartstop}${newnn}${bn}"
>>> +        if [ $notreally -eq 0 ];then
>>> +            mv ${etcd}${lev}.d/${oldstartstop}${oldnn}${bn} 
>>> ${etcd}${lev}.d/${newstartstop}${newnn}${bn}
>>> +        fi
>>> +        if [ $dostart -eq 1 ] && [ $newstartstop = "S" ] && [ $lev 
>>> = $RUNLEVEL ]; then
>>> +            $fn start || true
>>> +        fi
>>> +    fi
>>> +
>>> +}
>>> +
>>> +renamelinks()
>>> +{
>>> +    if [ $# -eq 2 ]; then
>>> +        renamelink $1 $2
>>> +    else
>>> +        for i in 2 3 4 5 S; do
>>> +            renamelink $1 $i
>>> +        done
>>> +    fi
>>> +}
>>> +
>>>   while [ $# -gt 0 ]; do
>>>       case $1 in
>>>           -n)    notreally=1
>>> @@ -221,6 +259,13 @@ case $1 in
>>>           ;;
>>>         start | stop)
>>> +        if [ $# -lt 4 ]
>>> +        then
>>> +            echo "Not enough arguments"
>>> +            usage
>>> +            exit 1
>>> +        fi
>>> +
>>>           while [ $# -gt 0 ]; do
>>>               if [ $1 = "start" ]; then
>>>                   letter=S
>>> @@ -251,6 +296,31 @@ case $1 in
>>>           makelinks
>>>           ;;
>>>   +    enable | disable)
>>> +        if [ $1 = "enable" ]; then
>>> +            letter=S
>>> +        elif [ $1 = "disable" ]; then
>>> +            letter=K
>>> +        else
>>> +            usage
>>> +            exit 1
>>> +        fi
>>> +        shift
>>> +        if [ $# -gt 0 ]
>>> +        then
>>> +            case $1 in
>>> +                S|2|3|4|5)
>>> +                    renamelinks $letter $1
>>> +                    ;;
>>> +                *)
>>> +                    usage
>>> +                    exit 1
>>> +                    ;;
>>> +            esac
>>> +        else
>>> +            renamelinks $letter
>>> +        fi
>>> +        ;;
>>>       *)
>>>           usage
>>>           exit 1
>>
-- 
BRs

Sandy(Li Changqing)


