Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0176E00C08; Mon, 10 Oct 2016 13:19:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 807FDE0049A
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 13:19:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 10 Oct 2016 13:19:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,474,1473145200"; d="scan'208";a="1051941057"
Received: from klee32-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.184.241])
	by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2016 13:19:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Tue, 11 Oct 2016 09:19:15 +1300
Message-ID: <1713204.tuaSYvq94G@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.5-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <23f23361-56e8-9ce7-b423-4812e8347b53@windriver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
	<1973495.KDbYGoBku8@peggleto-mobl.ger.corp.intel.com>
	<23f23361-56e8-9ce7-b423-4812e8347b53@windriver.com>
MIME-Version: 1.0
Cc: "Howlett, Liam" <Liam.Howlett@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 10 Oct 2016 20:19:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 10 Oct 2016 12:47:11 Mark Hatle wrote:
> On 10/10/16 12:37 PM, Paul Eggleton wrote:
> > On Mon, 10 Oct 2016 04:48:41 Hatle, Mark wrote:
> >>> On Oct 10, 2016, at 2:54 AM, Paul Eggleton
> >>> <paul.eggleton@linux.intel.com>
> >>> 
> >>> wrote:
> >>>> On Fri, 07 Oct 2016 13:20:50 Mark Hatle wrote:
> >>>> FYI, I have made sure these are re-based on top of paule/django18 and
> >>>> pushed to:
> >>>> 
> >>>> git://git.yoctoproject.org/layerindex-web mhatle/django18
> >>>> 
> >>>> BTW for me upgrading from paule/django18 to this version.  I only had
> >>>> to
> >>>> run 'manage.py syncdb'.
> >>>> 
> >>>> This created the new database and added the missing field for the
> >>>> recommend.>
> >>> 
> >>> I'm not sure how that worked there but it doesn't work here. If I take a
> >>> database that works on paule/django18, run syncdb then open the admin
> >> 
> >>> interface and click on "Layer branches" I get:
> >> We found a severe lack of instructions for creating migrations.  There
> >> were
> >> instructions for adding and deleting full DBs but not changing them.  We
> >> will need pointers or help to resolve this.
> >> 
> >>>  no such column: layerindex_layerbranch.collection
> >> 
> >> I never got that, but I'm also running SQLite.  May be the difference.
> > 
> > I'm using sqlite here also.
> > 
> >>> I'm afraid we really do need to create migrations whenever we change the
> >>> models.
> >> 
> >> Based on your prior comments we failed to find ANY reasonable examples,
> >> docs or instructions on doing this.  So we are stuck without help.
> > 
> > I'm happy to help directly if needed, but did you come across this
> > already?
> > 
> >   https://docs.djangoproject.com/en/1.8/topics/migrations/
> 
> Unfortunately that is the exactly document I was looking at and could not
> figure it out.
> 
> I can the various commands, makemigrations and related.. and the system
> simply told me "no migrations necessary".. and didn't generate any.
> 
> So we were never able to figure out what a migration should look like or how
> to generate it.
> 
> If you (or someone else) can help us figure out how to create a migration, I
> suspect after the first one  ---  future ones will be much easier to
> generate.

OK, so here's a step-by-step procedure - I suspect you'll need to stash and 
unstash your config changes along the way as well:

1) Ensure you are using a database created at the place you want to start, 
i.e. in this case paule/django18.

2) Determine which commits make changes to the models. This is one easy way:

$ git log -p paule/django18..mhatle/django18 layerindex/models.py

3) We don't have an initial migration, so we need to create that first in a 
single commit before all of the others, so to do that we'll direct the rebase 
to edit the top commit on paule/django18 but instead of modifying that we 
insert a commit after it. We also want to edit each commit found in step 1 
that made changes so we can add the migrations to them.

$ git checkout mhatle/django18
$ git rebase -i paule/django18^
(now set the command to "e" on the oldest commit, in this case 6f8201fe, and 
do the same for all the commits you found in step 1, then save & quit the 
editor)

4) Create the initial migration:

$ python3 manage.py makemigrations layerindex
Migrations for 'layerindex':
  0001_initial.py:
    - Create model BBAppend
    - Create model BBClass
    - Create model Branch
    - Create model LayerBranch
    - Create model LayerDependency
    - Create model LayerItem
    - Create model LayerMaintainer
    - Create model LayerNote
    - Create model Machine
    - Create model PythonEnvironment
    - Create model Recipe
    - Create model RecipeChange
    - Create model RecipeChangeset
    - Create model RecipeFileDependency
    - Create model ClassicRecipe
    - Add field recipe to recipefiledependency
    - Add field changeset to recipechange
    - Add field recipe to recipechange
    - Add field layerbranch to recipe
    - Add field dependency to layerdependency
    - Add field layerbranch to layerdependency
    - Add field layer to layerbranch
    - Add field update_environment to branch
    - Add field layerbranch to bbclass
    - Add field layerbranch to bbappend
    - Add field cover_layerbranch to classicrecipe

5) Apply the migrations to the database - this time we make it "fake" because 
the tables already exist:

$ python manage.py migrate layerindex --fake-initial

6) Create the initial migrations commit. (We won't need to do this ever again)

$ git add layerindex/migrations/ 
$ git commit

7) Continue the rebase:

$ git rebase --continue

8) Create the migration for the changes in this commit:

$ python manage.py makemigrations layerindex
Migrations for 'layerindex':
  0002_distro.py:
    - Create model Distro

9) Apply the migrations (*not* fake this time):

$ python manage.py migrate layerindex

10) Amend the migrations to the current commit:

$ git add layerindex/migrations/
$ git commit --amend

11) Continue the rebase:

$ git rebase --continue

12) Repeat steps 8-11 until the rebase finishes.

That should do it. It gets more complicated if you rename columns, or 
introduce columns that need initial data beyond a simple default, split models 
etc. but in this case when you're simply adding or removing columns it will 
take care of creating the migrations for you as long as you know the steps 
(and I admit it's a bit awkward if you've never done it before - I have the 
advantage of having done this already, not exactly with Django's migrations 
but with South and that was pretty similar).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

