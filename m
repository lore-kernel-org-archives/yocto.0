Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B3C5E00D34; Tue, 11 Oct 2016 01:16:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E2EEE00D26
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 01:16:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u9B8GihA019536
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Oct 2016 01:16:44 -0700 (PDT)
Received: from soho-mhatle-m.local (147.11.116.158) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 11 Oct 2016 01:16:43 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
	<23f23361-56e8-9ce7-b423-4812e8347b53@windriver.com>
	<1713204.tuaSYvq94G@peggleto-mobl.ger.corp.intel.com>
	<2846923.HDuc4EgLrO@peggleto-mobl.ger.corp.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <68e8c0c7-6e8b-56b8-dd4c-5f8f79d1c7c3@windriver.com>
Date: Tue, 11 Oct 2016 10:16:41 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <2846923.HDuc4EgLrO@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org, "Howlett, Liam" <Liam.Howlett@windriver.com>
Subject: Re: [layerindex-web][PATCH v2 00/12] Add Distro, dependency and recommends detection, and import_project
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
X-List-Received-Date: Tue, 11 Oct 2016 08:16:49 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 10/10/16 10:24 PM, Paul Eggleton wrote:
> On Tue, 11 Oct 2016 09:19:15 Paul Eggleton wrote:
>> On Mon, 10 Oct 2016 12:47:11 Mark Hatle wrote:
>>> On 10/10/16 12:37 PM, Paul Eggleton wrote:
>>>> On Mon, 10 Oct 2016 04:48:41 Hatle, Mark wrote:
>>>>>> On Oct 10, 2016, at 2:54 AM, Paul Eggleton
>>>>>> <paul.eggleton@linux.intel.com>
>>>>>>
>>>>>> wrote:
>>>>>>> On Fri, 07 Oct 2016 13:20:50 Mark Hatle wrote:
>>>>>>> FYI, I have made sure these are re-based on top of paule/django18 and
>>>>>>> pushed to:
>>>>>>>
>>>>>>> git://git.yoctoproject.org/layerindex-web mhatle/django18
>>>>>>>
>>>>>>> BTW for me upgrading from paule/django18 to this version.  I only had
>>>>>>> to
>>>>>>> run 'manage.py syncdb'.
>>>>>>>
>>>>>>> This created the new database and added the missing field for the
>>>>>>> recommend.>
>>>>>>
>>>>>> I'm not sure how that worked there but it doesn't work here. If I take
>>>>>> a
>>>>>> database that works on paule/django18, run syncdb then open the admin
>>>>>
>>>>>> interface and click on "Layer branches" I get:
>>>>> We found a severe lack of instructions for creating migrations.  There
>>>>> were
>>>>> instructions for adding and deleting full DBs but not changing them. 
>>>>> We
>>>>> will need pointers or help to resolve this.
>>>>>
>>>>>>  no such column: layerindex_layerbranch.collection
>>>>>
>>>>> I never got that, but I'm also running SQLite.  May be the difference.
>>>>
>>>> I'm using sqlite here also.
>>>>
>>>>>> I'm afraid we really do need to create migrations whenever we change
>>>>>> the
>>>>>> models.
>>>>>
>>>>> Based on your prior comments we failed to find ANY reasonable examples,
>>>>> docs or instructions on doing this.  So we are stuck without help.
>>>>
>>>> I'm happy to help directly if needed, but did you come across this
>>>> already?
>>>>
>>>>   https://docs.djangoproject.com/en/1.8/topics/migrations/
>>>
>>> Unfortunately that is the exactly document I was looking at and could not
>>> figure it out.
>>>
>>> I can the various commands, makemigrations and related.. and the system
>>> simply told me "no migrations necessary".. and didn't generate any.
>>>
>>> So we were never able to figure out what a migration should look like or
>>> how to generate it.
>>>
>>> If you (or someone else) can help us figure out how to create a migration,
>>> I suspect after the first one  ---  future ones will be much easier to
>>> generate.
>>
>> OK, so here's a step-by-step procedure - I suspect you'll need to stash and
>> unstash your config changes along the way as well:
>>
>> 1) Ensure you are using a database created at the place you want to start,
>> i.e. in this case paule/django18.
>>
>> 2) Determine which commits make changes to the models. This is one easy way:
>>
>> $ git log -p paule/django18..mhatle/django18 layerindex/models.py
>>
>> 3) We don't have an initial migration, so we need to create that first in a
>> single commit before all of the others, so to do that we'll direct the
>> rebase to edit the top commit on paule/django18 but instead of modifying
>> that we insert a commit after it. We also want to edit each commit found in
>> step 1 that made changes so we can add the migrations to them.
>>
>> $ git checkout mhatle/django18
>> $ git rebase -i paule/django18^
>> (now set the command to "e" on the oldest commit, in this case 6f8201fe, and
>> do the same for all the commits you found in step 1, then save & quit the
>> editor)
>>
>> 4) Create the initial migration:
>>
>> $ python3 manage.py makemigrations layerindex
>> Migrations for 'layerindex':
>>   0001_initial.py:
>>     - Create model BBAppend
>>     - Create model BBClass
>>     - Create model Branch
>>     - Create model LayerBranch
>>     - Create model LayerDependency
>>     - Create model LayerItem
>>     - Create model LayerMaintainer
>>     - Create model LayerNote
>>     - Create model Machine
>>     - Create model PythonEnvironment
>>     - Create model Recipe
>>     - Create model RecipeChange
>>     - Create model RecipeChangeset
>>     - Create model RecipeFileDependency
>>     - Create model ClassicRecipe
>>     - Add field recipe to recipefiledependency
>>     - Add field changeset to recipechange
>>     - Add field recipe to recipechange
>>     - Add field layerbranch to recipe
>>     - Add field dependency to layerdependency
>>     - Add field layerbranch to layerdependency
>>     - Add field layer to layerbranch
>>     - Add field update_environment to branch
>>     - Add field layerbranch to bbclass
>>     - Add field layerbranch to bbappend
>>     - Add field cover_layerbranch to classicrecipe
>>
>> 5) Apply the migrations to the database - this time we make it "fake"
>> because the tables already exist:
>>
>> $ python manage.py migrate layerindex --fake-initial
>>
>> 6) Create the initial migrations commit. (We won't need to do this ever
>> again)
>>
>> $ git add layerindex/migrations/
>> $ git commit
>>
>> 7) Continue the rebase:
>>
>> $ git rebase --continue
>>
>> 8) Create the migration for the changes in this commit:
>>
>> $ python manage.py makemigrations layerindex
>> Migrations for 'layerindex':
>>   0002_distro.py:
>>     - Create model Distro
>>
>> 9) Apply the migrations (*not* fake this time):
>>
>> $ python manage.py migrate layerindex
>>
>> 10) Amend the migrations to the current commit:
>>
>> $ git add layerindex/migrations/
>> $ git commit --amend
>>
>> 11) Continue the rebase:
>>
>> $ git rebase --continue
>>
>> 12) Repeat steps 8-11 until the rebase finishes.
>>
>> That should do it. It gets more complicated if you rename columns, or
>> introduce columns that need initial data beyond a simple default, split
>> models etc. but in this case when you're simply adding or removing columns
>> it will take care of creating the migrations for you as long as you know
>> the steps (and I admit it's a bit awkward if you've never done it before -
>> I have the advantage of having done this already, not exactly with Django's
>> migrations but with South and that was pretty similar).
> 
> Heh, I knew I would muck something up - where you see "python" in the above, 
> read "python3". (In my virtualenv-based setup it doesn't make any difference, 
> but that may not be true for yours.)

No problem.  The steps above did work for me.  Migrations have now been added to
the mhatle/django18 branch.

I think what we were missing was the setup of the initial migration, step #4
above.  Without doing that you get messages like no migrations necessary and
such -- very confusing.

Thanks for the help, let me know if there is anything else that needs to be
adjusted.

--Mark

> Cheers,
> Paul
> 


