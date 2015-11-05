Return-Path: <benoit.rapidel+yocto@exmachina.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93563E007D5; Thu,  5 Nov 2015 10:07:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from galat.willykaze.org (galat.willykaze.org [91.121.12.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7BCBE0071C
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 10:07:44 -0800 (PST)
Received: from [192.168.0.21] (vil69-h01-31-38-223-239.dsl.sta.abo.bbox.fr
	[31.38.223.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by galat.willykaze.org (Postfix) with ESMTPSA id D6781707B0
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 19:07:43 +0100 (CET)
References: <1446590054-31188-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
	<CACS+7ZSrrrmyc3hAUU6RJUSEpPvoBeQOLyFmjadJSqgJjoyVJg@mail.gmail.com>
	<563B9576.40202@linux.intel.com>
To: yocto@yoctoproject.org
From: Benoit Rapidel <benoit.rapidel+yocto@exmachina.fr>
Organization: ExMachina
Message-ID: <563B9AEE.1000903@exmachina.fr>
Date: Thu, 5 Nov 2015 19:07:42 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <563B9576.40202@linux.intel.com>
Subject: Re: [OE-core] [PATCH] terminal: Support old tmux version (<1.9) when querying height value
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: benoit.rapidel+yocto@exmachina.fr
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Nov 2015 18:07:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

As you said on Wheezy, tmux 1.6 the patch provided only works when the windows has 1 
pane.
If a window has multiple panes, then we got:
$ tmux list-panes -F "#{?pane_active,yes,no}"
yes
no
no
no
$ tmux list-panes -F "#{pane_height}"
43
48
49
43

This leads to:

In [2]: import subprocess as sub

In [3]: p = sub.Popen('tmux list-panes -F "#{?pane_active,yes,no}"', shell=True, 
stdout=sub.PIPE,stderr=sub.PIPE)

In [4]: out, err = p.communicate()

In [5]: out
Out[5]: 'yes\nno\nno\nno\nno\n'

In [6]: p = sub.Popen('tmux list-panes -F "#{pane_height}"', shell=True, 
stdout=sub.PIPE,stderr=sub.PIPE)

In [7]: out, err = p.communicate()

In [8]: out
Out[8]: '48\n24\n23\n47\n47\n'

In [9]:

Note: this only affect tmux 1.6 as tmux 1.9 support
	-F "#{?pane_active,#{pane_height},}"

B.

Le 05/11/2015 18:44, Leonardo Sandoval a écrit :
>
>
> On 11/03/2015 05:58 PM, Dan McGregor wrote:
>> On 3 November 2015 at 16:34,
>> <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>>> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
>>>
>>> Old tmux version (< 1.9) does not support nested formats on the -F parameter, so
>>> if nested format does not give any answer, do the query in two steps.
>>>
>>> Tested on tmux 1.6.
>>
>> Yeah, I noticed this shortly after I submitted the fix for 1.9 but
>> didn't think much of it. What system are you using that has tmux 1.6?
>>
>
> debian wheezy.
>
> Benoit, can you report the issues you are seeing on tmux1.9 and the tmux output from
> the -F commands?
>
> Seems than when n-panes are open, we get n outputs so clearly calling int() is not
> enough, so current solution just works when n=1
>
>
>>>
>>> Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
>>> ---
>>>   meta/lib/oe/terminal.py |   15 ++++++++++++++-
>>>   1 file changed, 14 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/meta/lib/oe/terminal.py b/meta/lib/oe/terminal.py
>>> index 52a8913..686b1ce 100644
>>> --- a/meta/lib/oe/terminal.py
>>> +++ b/meta/lib/oe/terminal.py
>>> @@ -218,11 +218,24 @@ def spawn(name, sh_cmd, title=None, env=None, d=None):
>>>
>>>   def check_tmux_pane_size(tmux):
>>>       import subprocess as sub
>>> +    size = 0
>>>       try:
>>>           p = sub.Popen('%s list-panes -F "#{?pane_active,#{pane_height},}"' % tmux,
>>>                   shell=True,stdout=sub.PIPE,stderr=sub.PIPE)
>>>           out, err = p.communicate()
>>> -        size = int(out.strip())
>>> +        try:
>>> +            size = int(out.strip())
>>> +        except ValueError:
>>> +            # Older tmux versions (< 1.9) does not support nested formats,
>>> +            # so try it in two steps
>>> +            p = sub.Popen('%s list-panes -F "#{?pane_active,yes,no}"' % tmux,
>>> +                shell=True,stdout=sub.PIPE,stderr=sub.PIPE)
>>> +            out, err = p.communicate()
>>> +            if "yes" in out.strip():
>>> +                p = sub.Popen('%s list-panes -F "#{pane_height}"' % tmux,
>>> +                              shell=True,stdout=sub.PIPE,stderr=sub.PIPE)
>>> +                out, err = p.communicate()
>>> +                size = int(out.strip())
>>>       except OSError as exc:
>>>           import errno
>>>           if exc.errno == errno.ENOENT:
>>> --
>>> 1.7.10.4
>>>
>>> --
>>> _______________________________________________
>>> Openembedded-core mailing list
>>> Openembedded-core@lists.openembedded.org
>>> http://lists.openembedded.org/mailman/listinfo/openembedded-core

-- 
Benoit Rapidel

Co-founder & CTO at ExMachina

