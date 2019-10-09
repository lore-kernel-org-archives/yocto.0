Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10502E00D99; Wed,  9 Oct 2019 02:42:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.43 listed in list.dnswl.org]
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 950D1E00D8A
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2019 02:42:40 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id r17so4344917wme.0
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2019 02:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=LfqaJocezAV8iuX3vy3G55tgXFv8Jaytuztiol0Pv9A=;
	b=Rjy8sq/H3q9lCr0i3YQTfhy7CgKS+/qULOVPFgtpHbT0Y9BdFWvsQW/Ez7eYLd37LL
	PpLvPVfolKDvsr6xriZIzJJAnGxt566AxooTKsI74Iv8+5RTJfGLtsSJD5//yvb8cwec
	H9l7L76SjspjrSyjp3TuPSklvh8NLhTHT8SzLsCqDiYPqvV/Da0c2qMuNUjfUFHfV5r6
	AWPu746aMwHqS/pNmbuzuJr16PsJJNbv67BQPaw4/8Jc84YsuN8Dj7z/yoC4jZ4zjAL4
	rKfgSmTw6u+7+VfeWfE5PDSlq3halEa8jrYXB4Y3ywDbLnZjWC4AjPQzokuObzdympyz
	L0Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=LfqaJocezAV8iuX3vy3G55tgXFv8Jaytuztiol0Pv9A=;
	b=T0ToPRR+3WAJZXFlNM0eAraznka3/C2CkAopXLX7Aqgo3GrM6XuT1R7yC38/aXrRgJ
	SnBW7+Gfm5D5Xwv3mdE+/8H1bhml62uo9IKMWSBPU9kmibKs+iF6KKWJUk+nRQP8ludR
	1b+b8znZja9ajRyaquvbUSnRgRVoka6xMdwcnO5mEnsILrgy0LZrrALYjn55NR9WrsQe
	pBXzJ2YNxYSPHBB862C78Uq8jd+4KQxymXl7zLilm4wuw3prk34Wnada6ooIhAJGJ2xP
	lsvn9nbewcsPdd6k36lADmLV8Kiw9ZRKH3jyon27CATto1sMlTYdZs/LIJV5ie7ZrH+Y
	eywA==
X-Gm-Message-State: APjAAAVqB4t643Cx2IzybwMe3aztCzkJpEetssRDq5o0G4Upz8yf6UnR
	Ce1Xhz+lvIz/KviwCNc72HjsZfW2E8Y=
X-Google-Smtp-Source: APXvYqwQqhRSAGdm9UWj/UKv0WfsAXpyhvazO4se1iR7zqk3aOOPNi0MZYGzJsJl6liWEifHz8Sexg==
X-Received: by 2002:a1c:f718:: with SMTP id v24mr1773870wmh.82.1570614158943; 
	Wed, 09 Oct 2019 02:42:38 -0700 (PDT)
Received: from [172.16.2.34] ([81.168.94.182])
	by smtp.gmail.com with ESMTPSA id
	w125sm4196833wmg.32.2019.10.09.02.42.37 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Oct 2019 02:42:38 -0700 (PDT)
To: yocto@yoctoproject.org
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <a51024a0-2c3f-a584-2821-c5c8a8a786a3@gherzan.ro>
Date: Wed, 9 Oct 2019 10:42:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Subject: Task vardeps on a variable changed externally
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
X-List-Received-Date: Wed, 09 Oct 2019 09:42:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi guys,

I struggle to figure out an issue that I lately got into. I want to have 
a recipe which writes a manifest of all the layers part of the build. 
These layers are all git repositories and I want their revision to be 
exposed at runtime. So I obviously have a a python function which 
computes let's say, for the sake of example, a revision of one layer.

def get_rev(d):
     # returns revision of a repository

LAYER_REVISION := "${get_rev(d)}"

The recipe also has a `do_compile` variable dependency:
do_compile[vardeps] += "LAYER_REVISION"

Checking the task signature I see the inclusion of the expanded variable 
LAYER_REVISION.

Now, if I externally change the revision of that respective layer the 
task is not re-triggered even so the recipe environment reports the 
updated variable (bitbake -e). What is even more confusing is that if 
for whatever reason the do_compile task gets invalidated (or I force 
it), the build system returns a "basehash value changed" error.

I would expect that the change of revision to trickle a task 
invalidation and the task to be rerun but that doesn't seem to happen as 
described above.

-- 
Andrei Gherzan

